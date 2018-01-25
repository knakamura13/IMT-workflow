//
//  StepsVC.swift
//  IMT-workflow
//
//  Created by Kyle Nakamura on 12/31/17.
//  Copyright © 2017 Kyle Nakamura. All rights reserved.
//

import UIKit

class StepsVC: UIViewController, UIViewControllerPreviewingDelegate {

    // Outlets
    @IBOutlet weak var stepTxtLbl: UILabel!
    @IBOutlet weak var stepImg: UIImageView!
    @IBOutlet weak var btnA: UIView!
    @IBOutlet weak var btnB: UIView!
    @IBOutlet weak var btnC: UIView!
    @IBOutlet weak var btnD: UIView!
    @IBOutlet weak var btnALbl: UILabel!
    @IBOutlet weak var btnBLbl: UILabel!
    @IBOutlet weak var btnCLbl: UILabel!
    @IBOutlet weak var btnDLbl: UILabel!
    
    // Variables
    var currentStep: Step = audioSteps[0]
    var options = [String]()
    var values = [Int]()
//    var prevIndex: Int = 0
    var nextIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = issueSelection + " Troubleshooting"
    }
    
    /* Upon Force Touch push, assign square area to remain unblurred */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        currentStep = audioSteps[nextIndex]
        options = Array(currentStep.options.keys)
        values = Array(currentStep.options.values)
        
        // Setup the new step
        stepTxtLbl.text = currentStep.text
        stepImg.image = currentStep.image
        stepImg.layer.cornerRadius = 5
        stepImg.clipsToBounds = true
        btnALbl.text = options[0]
        if options.count >= 2 {
            btnB.isHidden = false
            btnBLbl.isHidden = false
            btnBLbl.text = options[1]
        } else {
            btnB.isHidden = true
            btnBLbl.isHidden = true
        }
        if options.count >= 3 {
            btnC.isHidden = false
            btnCLbl.isHidden = false
            btnCLbl.text = options[2]
        } else {
            btnC.isHidden = true
            btnCLbl.isHidden = true
        }
        if options.count == 4 {
            btnC.isHidden = false
            btnDLbl.isHidden = false
            btnDLbl.text = options[3]
        } else {
            btnD.isHidden = true
            btnDLbl.isHidden = true
        }
        
        for button in [btnA!, btnB!, btnC!, btnD!] {
            customButton(btn: button)
        }
        
        // Check if device has force touch screen
        if (traitCollection.forceTouchCapability == .available){
            registerForPreviewing(with: self as UIViewControllerPreviewingDelegate, sourceView: view)
        }
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        if currentStep.image != nil {
        previewingContext.sourceRect = CGRect(origin: CGPoint(x: stepImg.frame.origin.x, y: stepImg.frame.origin.y), size: CGSize(width: stepImg.frame.width, height: stepImg.frame.height))
        return PopImageVC()
        } else {
            return nil
        }
    }
    
    /* Upon Force Touch pop, assign view controller to segue to */
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        performSegue(withIdentifier: "PopImageSegue", sender: nil)
    }
    
    
    /* Customize appearance of options buttons */
    func customButton(btn: UIView!) {
        btn.clipsToBounds = true
        btn.layer.masksToBounds = false
        btn.layer.cornerRadius = 5
        btn.layer.shadowRadius = 5
        btn.layer.shadowOpacity = 0.4
        btn.layer.shadowOffset = CGSize(width: 1, height: 2)
        btn.layer.shadowColor = APU_COLOR().black.cgColor
        btn.backgroundColor = APU_COLOR().red
    }
    
    /* Change button color to APU_COLOR().darkRed and then back again */
    func animateColorChange(btn: UIView) {
        btn.backgroundColor = APU_COLOR().red
        UIView.animate(withDuration: 0.25, animations: { () -> Void in
            btn.backgroundColor = APU_COLOR().darkRed
        }, completion: { finished in
            UIView.animate(withDuration: 0.25, animations: { () -> Void in
                btn.backgroundColor = APU_COLOR().red
            }, completion: nil)
        })
        
        viewWillAppear(true)    // Reload viewWillAppear
    }
    
    func stepsAreFinished() -> Bool {
        if nextIndex == 999 {
            performSegue(withIdentifier: "FinishSegue", sender: nil)
            return true
        }
        return false
    }
    
    @IBAction func btnAPressed(_ sender: Any) {
        if !stepsAreFinished() {
            nextIndex = values[0]
            animateColorChange(btn: btnA)
        }
    }
    @IBAction func btnBPressed(_ sender: Any) {
        if !stepsAreFinished() {
            nextIndex = values[1]
            animateColorChange(btn: btnB)
        }
    }
    @IBAction func btnCPressed(_ sender: Any) {
        if !stepsAreFinished() {
            nextIndex = values[2]
            animateColorChange(btn: btnC)
        }
    }
    @IBAction func btnDPressed(_ sender: Any) {
        if !stepsAreFinished() {
            nextIndex = values[3]
            animateColorChange(btn: btnD)
        }
    }
}
