//
//  TipCalculator.swift
//  Tipsy
//
//  Created by Alasdair Wem on 21/10/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

struct TipCalculator {
    
    var tipPercentage:Float = 0.1
    var foodBill:Float = 0.0
    var noOfPeople:Int = 1
    
    mutating func setTipPercentage(_ buttonTitle: String) {
        switch(buttonTitle) {
        case "10%":
            tipPercentage = 0.1
        case "20%":
            tipPercentage = 0.2
        default:
            tipPercentage = 0.0
        }
    }
    
    
    mutating func getTipPercentage() -> Float {
        return tipPercentage 
    }
    
    
    
    mutating func setNoOfPeople(_ splitNumber: Int) {
        noOfPeople = splitNumber
    }
    
    
    
    mutating func setFoodBill(total: Float) {
        foodBill = total
    }
    
    
}
