//
//  TeamsVC.swift
//  IMT-workflow
//
//  Created by Kyle Nakamura on 12/28/17.
//  Copyright © 2017 Kyle Nakamura. All rights reserved.
//

import UIKit

// Global
var teamSelection = ""

class TeamsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let reuseIdentifier = "cell"
    let items = ["Media: \nClassroom Tech", "Media: \nEvent Support", "Device Solutions: \nField Support", "Device Solutions: \nLab Support", "Support Desk: \nFront Desk", "Support Desk: \nCall Center"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Teams"
        
        //Define CollectionView Layout
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width * 0.8
        
        layout.sectionInset = UIEdgeInsets(top: 40, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: width, height: width/2)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 30
        
        collectionView!.collectionViewLayout = layout
    }
    
    
    
    /*
     *   Collection View Setup
     */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
        cell.myLabel.text = self.items[indexPath.item]
        cell.clipsToBounds = false
        cell.layer.masksToBounds = false
        cell.layer.cornerRadius = 5
        cell.layer.shadowRadius = 5
        cell.layer.shadowOpacity = 0.4
        cell.layer.shadowOffset = CGSize(width: 1, height: 6)
        cell.layer.shadowColor = UIColor.black.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let trimmed = items[indexPath[1]].replacingOccurrences(of: "\\n*", with: "", options: .regularExpression).components(separatedBy: ": ")
        teamSelection = trimmed[1] // Save a string holding the selected team name
        performSegue(withIdentifier: "segueToIssues", sender: nil)
    }
    
    // Hide home bar on iPhone X
    override func prefersHomeIndicatorAutoHidden() -> Bool {
        return true
    }
}

extension UICollectionView {
    func roundCorners(_ corners:UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}

