//
//  ScreenColorViewController.swift
//  Mensagens
//
//  Copyright © 2020 kleyson Tavares
//

import UIKit

class ScreenColorViewController: BaseViewController {
    
    @IBOutlet weak var viBorder: UIView!
    
    @IBOutlet weak var swWhiteBorder: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //testiculo
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ResultViewController
        vc.message = message
    }
    
    @IBAction func changeBorder(_ sender: UISwitch) {
        //verifica se o switch esta ligado, se sim manté a cor branca do contrario CLEAR (fica sem cor, transparente)
        viBorder.backgroundColor = sender.isOn ? .white : .clear
    }
}

