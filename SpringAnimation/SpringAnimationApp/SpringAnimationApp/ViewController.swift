//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Rose on 07.01.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet weak var coreAnimationView: UIView!
    @IBOutlet weak var springAnimationView: SpringView!
    
    private var animationStarted = false
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) {
            
            if !self.animationStarted {
                self.coreAnimationView.frame.origin.x -= 40
                self.animationStarted.toggle()
            }
        }
        
    }
    
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "morph"
        springAnimationView.curve = "easeIn"
//      springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.animate()
        
        sender.animation = "wobble"
        sender.animate()
    }
}

