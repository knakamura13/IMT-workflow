//
//  Initialized_Steps.swift
//  IMT-workflow
//
//  Created by Kyle Nakamura on 1/11/18.
//  Copyright © 2018 Kyle Nakamura. All rights reserved.
//

import Foundation

var audioSteps: [Step] = [
    Step(image: nil, title: "Restart", text: "Have you tried turning it off and on again?", options: ["Yes":1, "No":1], index: 0, prev: 0),
    Step(image: nil, title: "Powered On", text: "Is the device plugged in?", options: ["Yes":2, "No":2], index: 1, prev: 0),
    Step(image: nil, title: "Colored Lights", text: "What color light is on?", options: ["Red":3, "Green":3, "Red & Green":3], index: 2, prev: 0),
    Step(image: nil, title: "Cable Connections", text: "Are the aux cables plugged in?", options: ["Yes":4, "No":4], index: 3, prev: 0),
    Step(image: nil, title: "Room System Power", text: "Is the room system turned on?", options: ["Yes":5, "No":5], index: 4, prev: 0),
    Step(image: nil, title: "Multiple Devices Tested", text: "Does the problem persist on multiple input devices?", options: ["Yes":6, "No":6], index: 5, prev: 0),
    Step(image: nil, title: "Call In Backup", text: "If you are still experiencing problems, contact Geek Squad.", options: ["Okay :(":999], index: 6, prev: 0)
]

var networkSteps: [Step] = [
    Step(image: nil, title: "Restart", text: "Have you tried turning it off and on again?", options: ["Yes":1, "No":1], index: 0, prev: 0),
    Step(image: nil, title: "Powered On", text: "Is the device plugged in?", options: ["Yes":2, "No":2], index: 1, prev: 0),
    Step(image: nil, title: "Colored Lights", text: "What color light is on?", options: ["Red":3, "Green":3, "Red & Green":3], index: 2, prev: 0),
    Step(image: nil, title: "Cable Connections", text: "Are the network cables plugged in?", options: ["Yes":4, "No":4], index: 3, prev: 0),
    Step(image: nil, title: "Room System Power", text: "Is the room system turned on?", options: ["Yes":5, "No":5], index: 4, prev: 0),
    Step(image: nil, title: "Multiple Devices Tested", text: "Does the problem persist on multiple input devices?", options: ["Yes":6, "No":6], index: 5, prev: 0),
    Step(image: nil, title: "Call In Backup", text: "If you are still experiencing problems, contact Geek Squad.", options: ["Okay :(":999], index: 6, prev: 0)
]

var peripheralsSteps: [Step] = [
    Step(image: nil, title: "Restart", text: "Have you tried turning it off and on again?", options: ["Yes":1, "No":1], index: 0, prev: 0),
    Step(image: nil, title: "Powered On", text: "Is the device plugged in?", options: ["Yes":2, "No":2], index: 1, prev: 0),
    Step(image: nil, title: "Colored Lights", text: "What color light is on?", options: ["Red":3, "Green":3, "Red & Green":3], index: 2, prev: 0),
    Step(image: nil, title: "Cable Connections", text: "Are the peripherals plugged in?", options: ["Yes":4, "No":4], index: 3, prev: 0),
    Step(image: nil, title: "Room System Power", text: "Is the room system turned on?", options: ["Yes":5, "No":5], index: 4, prev: 0),
    Step(image: nil, title: "Multiple Devices Tested", text: "Does the problem persist on multiple input devices?", options: ["Yes":6, "No":6], index: 5, prev: 0),
    Step(image: nil, title: "Call In Backup", text: "If you are still experiencing problems, contact Geek Squad.", options: ["Okay :(":999], index: 6, prev: 0)
]

var videoSteps: [Step] = [
    Step(image: nil, title: "Restart", text: "Have you tried turning it off and on again?", options: ["Yes":1, "No":1], index: 0, prev: 0),
    Step(image: nil, title: "Powered On", text: "Is the device plugged in?", options: ["Yes":2, "No":2], index: 1, prev: 0),
    Step(image: nil, title: "Colored Lights", text: "What color light is on?", options: ["Red":3, "Green":3, "Red & Green":3], index: 2, prev: 0),
    Step(image: nil, title: "Cable Connections", text: "Are the video cables plugged in?", options: ["Yes":4, "No":4], index: 3, prev: 0),
    Step(image: nil, title: "Room System Power", text: "Is the room system turned on?", options: ["Yes":5, "No":5], index: 4, prev: 0),
    Step(image: nil, title: "Multiple Devices Tested", text: "Does the problem persist on multiple input devices?", options: ["Yes":6, "No":6], index: 5, prev: 0),
    Step(image: nil, title: "Call In Backup", text: "If you are still experiencing problems, contact Geek Squad.", options: ["Okay :(":999], index: 6, prev: 0)
]
