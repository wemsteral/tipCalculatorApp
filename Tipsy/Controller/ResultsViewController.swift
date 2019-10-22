//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Alasdair Wem on 21/10/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalPP:Float?
    var noOfPeople:Int?
    var tipAmount:Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = "£" + String(format: "%.2f", totalPP!)
        settingsLabel.text = "Split between \(noOfPeople!) people, with \(tipAmount! * 100)% tip"
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
