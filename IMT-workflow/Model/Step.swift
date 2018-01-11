//
//  Step.swift
//  IMT-workflow
//
//  Created by Kyle Nakamura on 12/31/17.
//  Copyright © 2017 Kyle Nakamura. All rights reserved.
//
import Foundation
import UIKit

class Step {
    // Base variables
    fileprivate var _image: UIImage = #imageLiteral(resourceName: "imt-square")                                            // Image for the Step, if necessary
    fileprivate var _title: String = "Title"                                        // The issue name or title
    fileprivate var _text: String = "Have you tried turning it off and on again?"   // The main question or instructions for the Step
    fileprivate var _options: [String : Int] = ["Yes" : 1, "No" : 2]                // Dictionary of options/buttons and a correesponding index for navigation
    fileprivate var _index: Int = 0                                                 // Unique index for each Step
    fileprivate var _prev: Int = 0                                                  // Index of the most recently viewed Step
    
    // Getters
    var image: UIImage {
        get {
            return _image
        }
        set(value) {
            _image = value
        }
    }
    var title: String {
        get {
            return _title
        }
        set(value) {
            _title = value
        }
    }
    var text: String {
        get {
            return _text
        }
        set(value) {
            _text = value
        }
    }
    var options: [String : Int] {
        get {
            return _options
        }
        set(value) {
            _options = value
        }
    }
    var index: Int {
        get {
            return _index
        }
        set(value) {
            _index = value
        }
    }
    var prev: Int {
        get {
            return _prev
        }
        set(value) {
            _prev = value
        }
    }
    
    // Initializer
    init(image: UIImage, title: String, text: String, options: [String : Int], index: Int, prev: Int) {
        self._image = image
        self._title = title
        self._text = text
        self._options = options
        self._index = index
        self._prev = prev
    }
}
