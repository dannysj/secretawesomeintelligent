//
//  Medicine.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import Foundation

struct Medicine {
    var name:String!
    var number: Int!
    var description: String!
    var imageURL: String!
    
    init(name: String, number: Int, description: String, imageURL: String) {
        self.name = name
        self.number = number
        self.description = description
        self.imageURL = imageURL
    }
}
