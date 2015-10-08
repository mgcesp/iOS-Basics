//
//  HomeViewController.swift
//  CollectionView
//
//  Created by Manuel Cespedes on 10/5/15.
//  Copyright © 2015 DevBros. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var userProfileButton: UIButton!
    @IBOutlet weak var userFullNameButton: UIButton!
    
    // MARK: 
    private var interests = Interest.createInterests()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private struct Storyboard {
        static let CellIdentifier = "InterestCell"
    }

}

// extend a class
extension HomeViewController: UICollectionViewDataSource {
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Storyboard.CellIdentifier, forIndexPath: indexPath) as! InterestCollectionViewCell
        
        cell.interest = self.interests[indexPath.item]
        
        return cell
    }
    
}