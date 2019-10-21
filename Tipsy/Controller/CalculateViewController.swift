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
        tipCalculator.setTipPercentage(buttonTitle: sender.currentTitle!)
        
    }
    
    @IBAction func calculateTipPressed(_ sender: UIButton) {
        print(tipCalculator.getTipPercentage())
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
    }
}

