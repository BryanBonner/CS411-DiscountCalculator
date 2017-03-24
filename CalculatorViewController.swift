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
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var dollarsOffTextField: UITextField!
    @IBOutlet weak var discountPercTextField: UITextField!
    @IBOutlet weak var otherDiscountTextField: UITextField!
    @IBOutlet weak var taxPercTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        priceTextField.delegate = self
        dollarsOffTextField.delegate = self
        discountPercTextField.delegate = self
        otherDiscountTextField.delegate = self
        taxPercTextField.delegate = self
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
                if(textField.text != "") {
                    Data.price = Double(priceTextField.text!)!
                    priceLabel.text = Data.originalPrice.description
                }
            case dollarsOffTextField:
           if(textField.text != "") {
                Data.dollarsOff = Double(dollarsOffTextField.text!)!
            }
            case discountPercTextField:
           if(textField.text != "") {
                Data.discountPerc = Double(discountPercTextField.text!)!
            }
            case otherDiscountTextField:
           if(textField.text != "") {
                Data.otherDiscountPerc = Double(otherDiscountTextField.text!)!
        }
            case taxPercTextField:
           if(textField.text != "") {
                Data.taxPerc = Double(taxPercTextField.text!)!
        }
            default:
                break
        }
        discountLabel.text = Data.calculateDiscount().description
    
    }
 
}

