//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Spencer Curtis on 3/6/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    private let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        formatter.maximumIntegerDigits = 20
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 20
        return formatter
    }()
    
    
    // Inputs
    @IBAction func numberButtonTapped(_ sender: UIButton) { }
    
    @IBAction func decimalButtonTapped(_ sender: UIButton) { }
    
    // Pushing in the stack
    @IBAction func returnButtonTapped(_ sender: UIButton) { }
    
    // Operation
    @IBAction func divideButtonTapped(_ sender: UIButton) { }
    
    @IBAction func multiplyButtonTapped(_ sender: UIButton) { }
    
    @IBAction func subtractButtonTapped(_ sender: UIButton) { }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) { }
}
