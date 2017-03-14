//
//  ViewController.swift
//  DiscountCalculator
//
//  Created by CampusUser on 3/13/17.
//  Copyright © 2017 CPSC411. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController, UITextFieldDelegate {

    
    //this allows us to create a constant to this shared instance of calculator data
    let Data: CalculatorData = CalculatorData.shared
    
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var dollarsOffTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        priceTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField {
        case priceTextField:
            Data.price = Double(priceTextField.text!)!
        case dollarsOffTextField:
            Data.dollarsOff = Double(dollarsOffTextField.text!)!
        default:
            break
        }
    
    }


}

