//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Spencer Curtis on 3/6/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

import UIKit
import RPN

class CalculatorViewController: UIViewController {
    
    var calculator = Calculator()
    
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
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        guard let textFieldString = textField.text else { return }
        textField.text = "\(textFieldString)" + "\(sender.tag)"
    }
    
    @IBAction func decimalButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func returnButtonTapped(_ sender: UIButton) {
        // Pushing in to the stack
        guard let textFieldString = textField.text,
            let doubleRepresentationOfTextFieldString = Double(textFieldString) else { return }
        calculator.push(doubleRepresentationOfTextFieldString)
        textField.text = ""
    }
    
    // Operation
    @IBAction func divideButtonTapped(_ sender: UIButton) {
        calculator.calculate(.division)
        updateResult()
    }
    
    @IBAction func multiplyButtonTapped(_ sender: UIButton) {
        calculator.calculate(.multiplication)
        updateResult()
    }
    
    @IBAction func subtractButtonTapped(_ sender: UIButton) {
        calculator.calculate(.subtraction)
        updateResult()
    }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        calculator.calculate(.addition)
        updateResult()
    }
    
    func updateResult() {
        textField.text = "\(calculator.topValue()!)"
    }
    
}
