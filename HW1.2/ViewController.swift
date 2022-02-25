//
//  ViewController.swift
//  HW1.2
//
//  Created by Reek i on 24.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var redCircle: UIView!
    @IBOutlet var yellowCircle: UIView!
    @IBOutlet var greenCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 15
        redCircle.alpha = 0.3
        yellowCircle.alpha = 0.3
        greenCircle.alpha = 0.3
    }

    @IBAction func buttonPressed() {
        if redCircle.alpha < 1 && yellowCircle.alpha < 1 {
            redCircle.alpha = 1
            yellowCircle.alpha = 0.3
            greenCircle.alpha = 0.3
        } else if yellowCircle.alpha < 1 && greenCircle.alpha < 1 {
            redCircle.alpha = 0.3
            yellowCircle.alpha = 1
            greenCircle.alpha = 0.3
        } else {
            redCircle.alpha = 0.3
            yellowCircle.alpha = 0.3
            greenCircle.alpha = 1
        }
        button.setTitle("Next", for: .normal)
    }
}

