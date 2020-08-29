//
//  CollorPickerViewController.swift
//  Mensagens
//
//  Created by Kleyson Dos santos tavares on 01/07/2020.
//  Copyright © 2020 kleyson Tavares
//

import UIKit

class CollorPickerViewController: UIViewController {

    @IBOutlet weak var viCollor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    @IBAction func ChooseCollor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func changeCollor(_ sender: Any) {
        viCollor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
