//
//  Vaccine.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import Foundation

struct Vaccine {
    var name: String
    var takenDate: Date
    var month: Int
    
    init(name: String, takenDate: Date, month: Int) {
        self.name = name
        self.takenDate = takenDate
        self.month = month
    }
}
