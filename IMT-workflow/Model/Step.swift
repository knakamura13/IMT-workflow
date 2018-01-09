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
    fileprivate var _image: UIImage = #imageLiteral(resourceName: "arrow-right")
    fileprivate var _title: String = "Title"
    fileprivate var _text: String = "Have you tried turning it off and on again?"
    fileprivate var _options: [String] = ["Yes", "No"]
    fileprivate var _index: Int = 0
    fileprivate var _prev: Int = 0
    fileprivate var _next: Int = 0
    
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
    var options: [String] {
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
    var next: Int {
        get {
            return _next
        }
        set(value) {
            _next = value
        }
    }
    
    // Initializer
    init(image: UIImage, title: String, text: String, options: [String], index: Int, prev: Int, next: Int) {
        self._image = image
        self._title = title
        self._text = text
        self._options = options
        self._index = index
        self._prev = prev
        self._next = next
    }
}
