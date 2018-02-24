//
//  Intak.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import Foundation

struct Intake {
    var medicine: Medicine
    var startDate: Date
    var endDate: Date
    
    init(medicine: Medicine, startDate: Date, endDate: Date) {
        self.medicine = medicine
        self.startDate = startDate
        self.endDate = endDate
    }
}
