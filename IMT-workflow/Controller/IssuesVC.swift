//
//  IssuesVC.swift
//  IMT-workflow
//
//  Created by Kyle Nakamura on 12/28/17.
//  Copyright © 2017 Kyle Nakamura. All rights reserved.
//

import UIKit

// Global
var issueSelection = ""

class IssuesVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    // Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    // Variables
    let items = ["Audio", "Network", "Video", "Peripherals"].sorted()
    var inSearchMode = false
    var filtered = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = teamSelection + " Issues"
    }
    
    // Search Bar functions
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == "" {
            inSearchMode = false
            tableView.reloadData()
            view.endEditing(true)
        } else {
            inSearchMode = true
            let lower = searchBar.text?.lowercased()
            
            filtered.removeAll()
            for item in items {
                if item.lowercased().contains(lower!) && filtered.contains(item) != true {
                    filtered.append(item)
                }
            }
            tableView.reloadData()
        }
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
    
    
    
    /*
    *   Table View Setup
    */
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if inSearchMode {
            return filtered.count
        }
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "issueCell")  as? MyTableViewCell {
            let text: String!
            if inSearchMode {
                text = filtered[indexPath.row]
            } else {
                text = items[indexPath.row]
            }
            cell.myLabel.text = text
            return cell
        } else {
            return MyTableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if inSearchMode {
            issueSelection = filtered[indexPath.row]
        } else {
            issueSelection = items[indexPath.row]
        }
        performSegue(withIdentifier: "segueToSteps", sender: nil)
    }
    
    
    // Hide home bar on iPhone X
    override func prefersHomeIndicatorAutoHidden() -> Bool {
        return true
    }
    
    // Set back button text
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
    }
}

