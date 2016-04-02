//
//  ConverterViewController.swift
//  Hellow Swift Mobile World
//
//  Created by Nikolay Shubenkov on 02/04/16.
//  Copyright © 2016 Nikolay Shubenkov. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    let rubToUSDMultiplier = 1 / 67.67
    let usdToRubMultipier  = 63.0
    
    @IBOutlet weak var rubInput: UITextField!
    @IBOutlet weak var dollarInput: UITextField!
    
    @IBAction func rubToUsdPressed(sender: AnyObject) {
        convertToUsd()
    }
    
    @IBAction func usdToRubPressed(sender: AnyObject) {
        convertUSDToRub()
    }
    
    func convertToUsd(){
        guard let rubs = Double(rubInput.text!) else {
            return
        }
        let result = String(rubs * rubToUSDMultiplier)
        dollarInput.text = result
    }
    
    func convertUSDToRub(){
        guard let usd = Double(dollarInput.text!) else {
            return
        }
        let result = String(usd * usdToRubMultipier)
        rubInput.text = result
    }
    
}
