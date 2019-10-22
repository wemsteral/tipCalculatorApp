//
//  CalculateViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    
    @IBOutlet var tipAmountButtons: [UIButton]!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var billTotalField: UITextField!
    
    var tipCalculator = TipCalculator()

    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        tipAmountButtons.forEach( { $0.isSelected = false
        })
        sender.isSelected = true
        tipCalculator.setTipPercentage(sender.currentTitle!)
        
    }
    
    
    
    
    @IBAction func calculateTipPressed(_ sender: UIButton) {

        print(tipCalculator.getTipPercentage())
    }
    
    
    
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        tipCalculator.setNoOfPeople(Int(sender.value))
        splitNumberLabel.text = String(tipCalculator.noOfPeople)
        
    }
    
    
    
    
    @IBAction func billTotalUpdated(_ sender: UITextField) {
        let stringTotal = sender.text!
        tipCalculator.setFoodBill(total: Float(stringTotal) ?? 0.0)
    }
    
    
    
    
    
    // useful function to dismiss keypad with outside touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    
    
    
    
    
}

