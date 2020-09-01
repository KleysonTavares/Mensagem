//
//  CollorPickerViewController.swift
//  Mensagens
//
//  Created by Kleyson Dos santos tavares on 01/07/2020.
//  Copyright © 2020 kleyson Tavares
//

import UIKit

protocol CollorPickerDelegate: class {
    func applyColor (color: UIColor)
}

class CollorPickerViewController: UIViewController {
    

    @IBOutlet weak var viCollor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    //implementando o padrao DELEGATE
    weak var delegate: CollorPickerDelegate? //weak para referencia fraca entre as classes
    
    @IBAction func ChooseCollor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.applyColor(color: viCollor.backgroundColor!)
    }
    
    
    @IBAction func changeCollor(_ sender: Any) {
        viCollor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}
