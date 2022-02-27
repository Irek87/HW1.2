//
//  ViewController.swift
//  HW1.2
//
//  Created by Reek i on 24.02.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}
class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var redCircle: UIView!
    @IBOutlet var yellowCircle: UIView!
    @IBOutlet var greenCircle: UIView!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 10
        
        redCircle.alpha = lightIsOff
        yellowCircle.alpha = lightIsOff
        greenCircle.alpha = lightIsOff
    }

    override func viewWillLayoutSubviews() {
        redCircle.layer.cornerRadius = redCircle.frame.width / 2
        yellowCircle.layer.cornerRadius = yellowCircle.frame.width / 2
        greenCircle.layer.cornerRadius = greenCircle.frame.width / 2
    }
    
    @IBAction func buttonPressed() {
//        if button.currentTitle == "START" {
//            button.setTitle("NEXT", for: .normal)
//        }
        
        button.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenCircle.alpha = lightIsOff
            redCircle.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redCircle.alpha = lightIsOff
            yellowCircle.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenCircle.alpha = lightIsOn
            yellowCircle.alpha = lightIsOff
            currentLight = .red
        }
        
        }
}

