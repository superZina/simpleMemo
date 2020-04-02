//
//  ViewController2.swift
//  testMemo
//
//  Created by 이진하 on 2020/03/24.
//  Copyright © 2020 이진하. All rights reserved.
//

import UIKit

protocol SendDataDelegate {
    func sendData(data: String)
}

class ViewController2: UIViewController {
    
    @IBOutlet weak var textField2: UITextField!
    
    var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendBtn(_ sender: Any){
        if let data = textField2.text{
            delegate?.sendData(data: data)
            dismiss(animated: true, completion: nil)
        }
    }

}
