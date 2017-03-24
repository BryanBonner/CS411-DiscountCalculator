//
//  CalculatorData.swift
//  DiscountCalculator
//
//  Created by CampusUser on 3/13/17.
//  Copyright © 2017 CPSC411. All rights reserved.
//

import Foundation


class CalculatorData {
    var price: Double
    var dollarsOff: Double
    var discountPerc: Double
    var otherDiscountPerc: Double
    var taxPerc: Double
    var originalPrice: Double
    var discountPrice: Double
    
    init(price: Double, dollarsOff: Double, discountPerc: Double, otherDiscountPerc: Double,
         taxPerc: Double,originalPrice: Double, discountPrice: Double) {
        self.price = price
        self.dollarsOff = dollarsOff
        self.discountPerc = discountPerc
        self.otherDiscountPerc = otherDiscountPerc
        self.taxPerc = taxPerc
        self.originalPrice = originalPrice
        self.discountPrice  = discountPrice
    }
    
    func calculateDiscount() -> Double {
        return price - ((discountPerc + otherDiscountPerc)/100.0) * price - dollarsOff + calcOriginalWithTax()
    }
    func calcOriginalWithTax() -> Double {
        return (taxPerc/100.0 * price)
    }
    
    // Singleton Pattern
    static let shared: CalculatorData = CalculatorData(price: 0.0, dollarsOff: 0.0, discountPerc: 0.0, otherDiscountPerc: 0.0, taxPerc: 0.0, originalPrice: 0.0, discountPrice: 0.0)
    
}
