//
//  Person.swift
//  Multi-Screen App
//
//  Created by Timothy Tan on 11/1/2022.
//

import UIKit

class Person: NSObject {
    var name: String
    var house: String
    var age: Int
    
    init(name: String, house: String, age: Int) {
        self.name = name
        self.house = house
        self.age = age
    }

}
