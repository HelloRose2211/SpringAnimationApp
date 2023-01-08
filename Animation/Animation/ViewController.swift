//
//  ViewController.swift
//  Animation
//
//  Created by Rose on 07.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coreAnimationView: UIView!
    
    

    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        
    }
}

