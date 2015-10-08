//
//  Interest.swift
//  CollectionView
//
//  Created by Manuel Cespedes on 10/7/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class Interest {
    
    // MARK: Public API
    var title = ""
    var description = ""
    var numberOfMembers = 0
    var numberOfPosts = 0
    var featuredImage: UIImage!
    
    init(title: String, description: String, featuredImage: UIImage!) {
        self.title = title
        self.description = description
        self.featuredImage = featuredImage
        numberOfMembers = 1
        numberOfPosts = 1
    }
    
    static func createInterests() -> [Interest] {
        
        return [
            Interest(title: "We love traveling", description: "Backpacks and Beers", featuredImage: UIImage(named: "dock")!),
            Interest(title: "Summer is great!", description: "Protection and Style", featuredImage: UIImage(named: "raybans")!),
            Interest(title: "Working for our dreams", description: "Macs and Passion", featuredImage: UIImage(named: "office")!)
        ]
    }
    
}
