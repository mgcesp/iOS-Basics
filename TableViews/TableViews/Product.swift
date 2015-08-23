//
//  Product.swift
//  TableViews
//
//  Created by Manuel Cespedes on 8/23/15.
//  Copyright (c) 2015 DevBros. All rights reserved.
//

import Foundation
import UIKit

public enum ProductRating
{
    case Unrated
    case Average
    case OK
    case Good
    case Brilliant
}

// Represents a generic product. Need an image named "default"

class Product
{
    var id: String
    var age: String
    var weight: String
    var image: UIImage
    var rating: ProductRating
    
    init(id: String, age: String, weight: String, imageName: String)
    {
        self.id = id
        self.age = age
        self.weight = weight
        
        if let img = UIImage(named: imageName) {
            image = img
        } else {
            image = UIImage(named: "default")!
        }
        rating = .Unrated
    }
}
