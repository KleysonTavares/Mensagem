//
//  ViewController.swift
//  Mensagens
//
//  Copyright © 2020 kleyson Tavares
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        message = Message()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
}
    
    //extensao da classe textfield
    extension MessageViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            message.text = textField.text!
            lbmessage.text = textField.text!
            textField.resignFirstResponder()
            
            return true
        }
    }

extension MessageViewController: CollorPickerDelegate {
    func applyColor(color: UIColor){
        lbmessage.textColor = color
        message.textColor = color
    }
    
}
    
    


