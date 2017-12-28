//
//  ViewController.swift
//  IMT-workflow
//
//  Created by Kyle Nakamura on 12/28/17.
//  Copyright © 2017 Kyle Nakamura. All rights reserved.
//

import UIKit
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
     *  Change cell color on touch
    */
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.red
    }
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.cyan
    }
    
    /*
     * Action: handle cell selection
    */
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        performSegue(withIdentifier: "segueToWorkflow", sender: nil)
    }
}

