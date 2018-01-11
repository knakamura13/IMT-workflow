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
    @IBOutlet weak var stepTxtLbl: UILabel!
    @IBOutlet weak var stepImg: UIImageView!
    @IBOutlet weak var btnA: UIControl!
    @IBOutlet weak var btnB: UIControl!
    @IBOutlet weak var btnC: UIControl!
    @IBOutlet weak var btnD: UIControl!
    @IBOutlet weak var btnALbl: UILabel!
    @IBOutlet weak var btnBLbl: UILabel!
    @IBOutlet weak var btnCLbl: UILabel!
    @IBOutlet weak var btnDLbl: UILabel!
    
    // Variables
    var currentStep: Step = audioSteps[0]
    var prevIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = issueSelection + " Troubleshooting"
        
        var currentStepOptions = Array(currentStep.options.keys)

        stepTxtLbl.text = currentStep.text
        stepImg.image = currentStep.image
        btnALbl.text = currentStepOptions[0]
        btnBLbl.text = currentStepOptions[1]
        btnCLbl.text = currentStepOptions[1]
        btnDLbl.text = currentStepOptions[1]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        customButton(btn: btnA!)
        customButton(btn: btnB!)
        customButton(btn: btnC!)
        customButton(btn: btnD!)
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
