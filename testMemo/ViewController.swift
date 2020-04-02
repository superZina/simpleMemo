//
//  ViewController.swift
//  testMemo
//
//  Created by 이진하 on 2020/03/24.
//  Copyright © 2020 이진하. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show"{
            let viewController : ViewController2 = segue.destination as! ViewController2
            viewController.delegate = self
        }
    }

    @IBAction func unwindFromVC3(_ sender: UIStoryboardSegue){
        guard let vc3 = sender.source as? ViewController3 else {return}
        self.label2.text = vc3.textField3.text
    }

}

extension ViewController : SendDataDelegate{
     func sendData(data: String){
        label1.text = data
    }
}
