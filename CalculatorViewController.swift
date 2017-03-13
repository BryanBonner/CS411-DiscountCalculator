//
//  ViewController.swift
//  DiscountCalculator
//
//  Created by CampusUser on 3/13/17.
//  Copyright © 2017 CPSC411. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    
    //this allows us to create a constant to this shared instance of calculator data
    let Data: CalculatorData = CalculatorData.shared
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

