//
//  ProductLine.swift
//  TableViews
//
//  Created by Manuel Cespedes on 8/23/15.
//  Copyright (c) 2015 DevBros. All rights reserved.
//

import Foundation

class ProductLine {
    // Variables
    var name: String            // name of the product line
    var products: [Product]     // all products in the line
    
    init (named: String, includeProducts: [Product]) {
        name = named
        products = includeProducts
    }
    
    class func productLines() -> [ProductLine] {
        return [self.items1(), self.items2()]
    }
    
    private class func items1() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(id: "ID: 123", age: "Age: 18", weight: "Weight 60 kg", imageName: "default"))
        products.append(Product(id: "ID: 456", age: "Age: 19", weight: "Weight 65 kg", imageName: "default"))
        products.append(Product(id: "ID: 789", age: "Age: 20", weight: "Weight 75 kg", imageName: "default"))
        products.append(Product(id: "ID: 666", age: "Age: 13", weight: "Weight 69 kg", imageName: "default"))
        
        return ProductLine(named: "items1", includeProducts: products)
    }
    
    private class func items2() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(id: "ID: 123", age: "Age: 18", weight: "Weight 60 kg", imageName: "default"))
        products.append(Product(id: "ID: 456", age: "Age: 19", weight: "Weight 65 kg", imageName: "default"))
        products.append(Product(id: "ID: 789", age: "Age: 20", weight: "Weight 75 kg", imageName: "default"))
        products.append(Product(id: "ID: 666", age: "Age: 13", weight: "Weight 69 kg", imageName: "default"))
        
        return ProductLine(named: "items2", includeProducts: products)
    }

}


