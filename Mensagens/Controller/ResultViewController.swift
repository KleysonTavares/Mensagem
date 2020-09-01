//
//  ResultViewController.swift
//  Mensagens
//
//  Copyright © 2020 kleyson Tavares
//

import UIKit

class ResultViewController: BaseViewController {

    @IBOutlet weak var viBorder: UIView!
    var userWithBorder: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        lbmessage.text = message.text
        lbmessage.textColor = message.textColor
        lbmessage.backgroundColor = message.backgroundColor
        view.backgroundColor = message.screenColor
        //operador ternario
        viBorder.backgroundColor = userWithBorder ? .white : .clear
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }
}
