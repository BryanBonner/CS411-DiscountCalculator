//
//  GraphResultsView.swift
//  DiscountCalculator
//
//  Created by CampusUser on 3/18/17.
//  Copyright © 2017 CPSC411. All rights reserved.
//

import UIKit

class GraphResultsView: UIView {
    let Data: CalculatorData = CalculatorData.shared
    
    override func draw(_ rect: CGRect) {
        let context: CGContext = UIGraphicsGetCurrentContext()!
        
        var size: Double = Data.price
        var textPos: CGFloat = 0.0
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        switch size {
        case 10..<25.0:
            size = Double(screenHeight) + 100.0
            textPos = 10.0
        case 1..<10.0:
            size = Double(screenHeight) + 150.0
                 textPos = 20.0
        case 25..<35.00:
            size = Double(screenHeight) + 200.0
            textPos = 30.0
        case 35.00..<50.00:
            size = Double(screenHeight) + 300.0
        case 50.00..<60.00:
            size = Double(screenHeight)/2.0
        default:
            size = 0.0
        }
        
        let leftGuide:CGFloat = 16.0
        let rightGuide:CGFloat = screenWidth/2.0 + 16.0
        let topGuide:CGFloat = 48.0
        // let botGuide:CGFloat = screenHeight - 16.0
        
        // Draw Rectangle
        context.setFillColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
        context.fill(CGRect(x: 0.0, y: topGuide, width: screenWidth/2.0, height:screenHeight))
        
        context.setFillColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        context.fill(CGRect(x: screenWidth/2.0, y: topGuide, width: screenWidth/2.0, height:CGFloat(size)))
        
        // Draw Text
        let originalPriceText = "Original Price\n\n" + Data.price.description
            //Data.calculateDiscount().description
        let originalP = "Original Price\n\n" + Data.price.description
        
        // Text Attributes
        let textAttributes = [
            NSFontAttributeName: UIFont(name: "Helvetica Bold", size: 16.0)!,
            NSForegroundColorAttributeName: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        ]
        
        originalPriceText.draw(at: CGPoint(x: leftGuide + 40, y: topGuide + 100.0),
                    withAttributes: textAttributes)
        originalP.draw(at: CGPoint(x: rightGuide, y: topGuide + textPos),
                     withAttributes: textAttributes)
    }

}
