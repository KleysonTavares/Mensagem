//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Kleyson Dos santos tavares on 25/05/2020.
//  Copyright © 2020 kleyson Tavares
//

import UIKit

final class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbmessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor (_ sender: UIButton) {
        
    }
}
