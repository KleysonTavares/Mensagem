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
        lbmessage.textColor = message.textColor
        lbmessage.backgroundColor = message.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
}

extension MessageColorViewController: CollorPickerDelegate {
    func applyColor(color: UIColor) {
        lbmessage.backgroundColor = color
        message.backgroundColor = color
    }
}

