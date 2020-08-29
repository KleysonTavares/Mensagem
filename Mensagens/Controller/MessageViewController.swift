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
    
    override func changeColor(_ sender: UIButton) {
        let collorPicker = storyboard?.instantiateViewController(withIdentifier: "CollorPickerViewController") as! CollorPickerViewController
        collorPicker.modalPresentationStyle = .overCurrentContext
        present(collorPicker, animated: true, completion: nil)
    }
}
    
    //extenssao da classe textfield
    extension MessageViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            message.text = textField.text!
            lbmessage.text = textField.text!
            textField.resignFirstResponder()
            
            return true
        }
        
    }
    
    


