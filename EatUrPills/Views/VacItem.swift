//
//  VacItem.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import UIKit

class VacItem: UIView {

    var vaccine: Vaccine!
    
    
    func setupVaccine(vaccine: Vaccine) {
        self.vaccine = vaccine
    }
    
    func checkStatus() {
        // TODO:
        
    }
    
    override func draw(_ rect: CGRect) {
        let needleHeadWidth = rect.width / 1.3
        let needleHeadHeight = rect.height / 5
        let needleHeadRect = CGRect(x: rect.width / 2.0 - needleHeadWidth / 2.0, y: 0, width: needleHeadWidth, height: needleHeadHeight)
        let path = UIBezierPath(roundedRect: needleHeadRect, cornerRadius: needleHeadHeight / 2.0)
        UIColor.white.setStroke()
        UIColor.gray.setFill()
        path.stroke()
        path.fill()
        
        let stringeWidth = needleHeadWidth * 0.55
        let stringHeight = rect.height * 3 / 5
        let stringePath = UIBezierPath(rect: CGRect(x: rect.width / 2.0 - stringeWidth / 2.0, y: needleHeadHeight, width: stringeWidth, height: stringHeight))
        UIColor.white.setStroke()
        UIColor.white.setFill()
        stringePath.stroke()
        stringePath.fill()
        
        let needleLinePath = UIBezierPath()
        needleLinePath.lineCapStyle = .round
        needleLinePath.lineWidth = 3
        UIColor.gray.setStroke()
        needleLinePath.move(to: CGPoint(x: rect.width / 2.0, y: rect.height / 2.0))
        needleLinePath.addLine(to: CGPoint(x:rect.width / 2.0, y: rect.height))
        needleLinePath.stroke()

    }


}
