//
//  StepsVC.swift
//  IMT-workflow
//
//  Created by Kyle Nakamura on 12/31/17.
//  Copyright © 2017 Kyle Nakamura. All rights reserved.
//

import UIKit

class StepsVC: UIViewController {

    // Outlets
    @IBOutlet weak var btnYes: UIControl!
    @IBOutlet weak var btnNo: UIControl!
    
    // Variables
    var currentStep: Step
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = issueSelection + " Troubleshooting"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        customButton(btn: btnYes!)
        customButton(btn: btnNo!)
    }
    
    func customButton(btn: UIControl!) {
        btn.clipsToBounds = true
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = 5
        btn.layer.shadowRadius = 5
        btn.layer.shadowOpacity = 0.4
        btn.layer.shadowOffset = CGSize(width: 1, height: 2)
        btn.layer.shadowColor = UIColor.black.cgColor
    }
    
    // Actions
    
}
