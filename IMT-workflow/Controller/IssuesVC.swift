//
//  IssuesVC.swift
//  IMT-workflow
//
//  Created by Kyle Nakamura on 12/28/17.
//  Copyright © 2017 Kyle Nakamura. All rights reserved.
//

import UIKit

class IssuesVC: UIViewController, UITableViewDataSource {
    
    // outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    // variables
    let items = ["Audio", "Network", "Video", "Peripherals"].sorted()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = teamSelection + " Issues"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "issueCell")!  as! MyTableViewCell
        let text = items[indexPath.row]
        cell.myLabel.text = text
        
        return cell
    }
    
    // Hide home bar on iPhone X
    override func prefersHomeIndicatorAutoHidden() -> Bool {
        return true
    }
}

