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
        print(tipCalculator.calcTotalPerPerson(tip: tipCalculator.tipPercentage, noOfPeople: tipCalculator.noOfPeople, foodBill: tipCalculator.foodBill))
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.totalPP = tipCalculator.totalPerPerson
            print(tipCalculator.totalPerPerson)
        }
    }
    
    
    
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        tipCalculator.setNoOfPeople(Int(sender.value))
        splitNumberLabel.text = String(tipCalculator.noOfPeople)
        
    }
    
    
    
    
    @IBAction func billTotalUpdated(_ sender: UITextField) {
        if Float(sender.text!)?.floatingPointClass != nil {
            let total = Float(sender.text!)
            billTotalField.text = String(format: "%.2f", total!)
            tipCalculator.setFoodBill(total: total!)
        }
        else {
            billTotalField.placeholder = "Please enter a number"
            billTotalField.text = nil
            tipCalculator.setFoodBill(total: 0.0)
        }
    }
    
    
    
    
    
    // useful function to dismiss keypad with outside touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    
    
    
    
    
    
    
    
}

