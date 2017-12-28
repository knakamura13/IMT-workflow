//
//  ViewController.swift
//  IMT-workflow
//
//  Created by Kyle Nakamura on 12/28/17.
//  Copyright © 2017 Kyle Nakamura. All rights reserved.
//

import UIKit

// Global
var teamSelection = ""

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    var items = ["IMT Team", "IMT Team", "IMT Team", "IMT Team", "IMT Team", "IMT Team", "IMT Team", "IMT Team", "IMT Team", "IMT Team", "IMT Team", "IMT Team", "IMT Team"]
    
    // Set number of cells
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // Create cell for each index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
        
        // Update colors
        cell.myLabel.text = self.items[indexPath.item]
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        
        return cell
    }
    
    /*
     * Action: handle cell selection
    */
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        teamSelection = items[indexPath[1]] // Save a string holding the selected team name
        performSegue(withIdentifier: "segueToWorkflow", sender: nil)
    }
}

