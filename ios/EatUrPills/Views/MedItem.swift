//
//  MedItem.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import UIKit

class MedItem: UIView {
    
    var medicine: Medicine!

    
    func setupMedicine(medicine: Medicine) {
        self.medicine = medicine
    }
    
    func checkStatus() {
        // TODO:
        
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        var path = UIBezierPath()
        switch medicine.shapeType {
        case ShapeType.Oval:
            path = UIBezierPath(roundedRect: rect, cornerRadius: rect.height / 2.0)
            break
        case ShapeType.Round:
            path = UIBezierPath(ovalIn: rect)
            break
        
        case ShapeType.Triangle:
            path = UIBezierPath()
            path.lineCapStyle = .round
            path.lineJoinStyle  = .round
            path.move(to: CGPoint(x: rect.width / 2.0, y: 0))
            path.addLine(to: CGPoint(x: rect.width , y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width / 2.0, y: 0))
            path.close()
            
            break
        default:
            fatalError()
        }
        
        // fill
        UIColor(hex: medicine.color).setFill()
        UIColor.white.setStroke()
        
        path.fill()
        path.stroke()
    }
    

}
