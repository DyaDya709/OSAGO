//
//  CalcViewController.swift
//  OSAGO
//
//  Created by Дмитрий on 02.03.17.
//  Copyright © 2017 Дмитрий. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController  {
    var result = Calculate()
    
    @IBAction func experience(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:result.experience = 2
        case 1:result.experience = 4
        default:
            fatalError("что то пошло не так в func experience")
        }
    }
    
    @IBOutlet weak var letSwitchAge: UISlider!
   
    @IBAction func switchAge(_ sender: UISlider) {
    result.age = Int(letSwitchAge.value)
    textRatioAge.text = String(result.ratioAge())
    }
    //IBOutlet - хранит текущее значение
    @IBOutlet weak var letSwitchPower: UISlider!
   //метод, которы выполянется при активности
    //и через этот метод мы снимаем значение в
    //@IBOutlet weak var letSwitchPower
    @IBAction func switchPower(_ sender: UISlider) {
    result.horsePwr = Int(letSwitchPower.value)
        totalPrice.text = String(result.total)
    textRatioPower.text = String(result.ratioPower())
    }
    
        @IBOutlet weak var textRatioAge: UITextField!
//    func textFieldRatioAge(){
//        textRatioAge.text = String(result.ratioAge())
//    }
    @IBOutlet weak var textRatioPower: UITextField!
//    func textFieldRatioPower(){
//        textRatioPower.text = String(result.ratioPower())
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Calculate()
        
        // Do any additional setup after loading the view.
    }
 
    @IBOutlet weak var totalPrice: UILabel!
    
//    func total(){
//        totalPrice.text = String(result.total)
//    }
    
    //
}
