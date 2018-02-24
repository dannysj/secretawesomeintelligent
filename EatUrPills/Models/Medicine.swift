//
//  Medicine.swift
//  EatUrPills
//
//  Created by Danny Chew on 2/24/18.
//  Copyright © 2018 Danny Chew. All rights reserved.
//

import Foundation

enum ShapeType {
    case Triangle
    case Round
    case Oval
}

struct Medicine {
    var name:String
    var number: Int
    var description: String
    var imageURL: String
    var color:Int
    var shapeType: ShapeType
    
    init(name: String, number: Int, description: String, imageURL: String, color:Int, shapeType: ShapeType) {
        self.name = name
        self.number = number
        self.description = description
        self.imageURL = imageURL
        self.color = color
        self.shapeType = shapeType
    }
}
