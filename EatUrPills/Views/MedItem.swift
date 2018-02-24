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
    


    override func draw(_ rect: CGRect) {
        // Drawing code
        switch medicine.shapeType {
        case ShapeType.Oval:
            
            break
        case ShapeType.Round:
            
            break
        
        case ShapeType.Triangle:
            
            break
        default:
            <#code#>
        }
    }
    

}
