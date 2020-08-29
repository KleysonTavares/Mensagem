//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2020 kleyson Tavares
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbmessage.text = message.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
    
    override func changeColor(_ sender: UIButton) {
        let collorPicker = storyboard?.instantiateViewController(withIdentifier: "CollorPickerViewController") as! CollorPickerViewController
        collorPicker.modalPresentationStyle = .overCurrentContext
        present(collorPicker, animated: true, completion: nil)
    }
    
}

