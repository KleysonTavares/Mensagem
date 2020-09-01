//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Kleyson Dos santos tavares on 25/05/2020.
//  Copyright © 2020 kleyson Tavares
//

import UIKit

 class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbmessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor (_ sender: UIButton) {
        if let reference = self as? CollorPickerDelegate {
            let collorPicker = storyboard?.instantiateViewController(withIdentifier: "CollorPickerViewController") as! CollorPickerViewController
            collorPicker.modalPresentationStyle = .overCurrentContext
            collorPicker.delegate = reference // passar a classe como referencia
            present(collorPicker, animated: true, completion: nil)
    }
}
}
