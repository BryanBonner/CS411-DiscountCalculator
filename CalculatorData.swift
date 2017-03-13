//
//  CalculatorData.swift
//  DiscountCalculator
//
//  Created by CampusUser on 3/13/17.
//  Copyright © 2017 CPSC411. All rights reserved.
//

import Foundation

struct CalculatorData {
    
    let price = 0.0
    let dollarsOff = 0.0
    let discountPerc = 0.0
    let otherDiscountPerc = 0.0
    let taxPerc = 0.0
    let originalPrice = 0.0
    let discountPrice = 0.0
    
    static let sharedInstance = CalculatorData()
    
    func getDiscountPrice() -> Bool {
        return true
    }
    
    
}
