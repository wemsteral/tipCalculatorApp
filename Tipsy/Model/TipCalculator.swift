//
//  TipCalculator.swift
//  Tipsy
//
//  Created by Alasdair Wem on 21/10/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

struct TipCalculator {
    
    var tipPercentage:Float?
    var foodBill:Float?
    var noOfPeople:Int?
    
    mutating func setTipPercentage(buttonTitle: String) {
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
        return tipPercentage ?? 0.0
    }
    
    
}
