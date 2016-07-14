//
//  ViewController.swift
//  IOSCalculator
//
//  Created by spykins on 13/06/2016.
//  Copyright © 2016 Andela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsInTheMiddleOfTyping = false

    @IBAction func touchDigit(sender: UIButton) {
        if let check = sender.currentTitle {
            let textCurrentlyInDisplay = display.text!
            if userIsInTheMiddleOfTyping {
                display.text = textCurrentlyInDisplay + check
            } else {
                display.text = check
                userIsInTheMiddleOfTyping = true
            }
        }
        
    }

    @IBAction func performOperation(sender: UIButton) {
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
        userIsInTheMiddleOfTyping = false;
    }
}

