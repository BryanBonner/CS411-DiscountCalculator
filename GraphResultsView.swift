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
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        let leftGuide:CGFloat = 16.0
        //let rightGuide:CGFloat = screenWidth - 16.0
        let topGuide:CGFloat = 80.0
        // let botGuide:CGFloat = screenHeight - 16.0
        
        // Draw Rectangle
        context.setFillColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
        context.fill(CGRect(x:leftGuide, y:topGuide, width:screenWidth - 32.0, height:screenHeight - 88.0))
        
        context.setFillColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
        context.fill(CGRect(x:leftGuide, y:topGuide, width: screenWidth/2.0, height:screenHeight))
        // Draw Text
        let myText = "Discount = " + Data.price.description
        let subText = "shh"
        
        // Text Attributes
        let textAttributes = [
            NSFontAttributeName: UIFont(name: "Helvetica Bold", size: 16.0)!,
            NSForegroundColorAttributeName: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        ]
        
        myText.draw(at: CGPoint(x: leftGuide, y: topGuide + 8.0),
                    withAttributes: textAttributes)
        subText.draw(at: CGPoint(x: leftGuide + 16.0, y: topGuide + 32.0),
                     withAttributes: textAttributes)
    }

}
