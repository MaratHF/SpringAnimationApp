//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by MAC  on 06.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var nextAnimationButton: UIButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 10
        nextAnimationButton.layer.cornerRadius = 10
        
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(animation.force)
        durationLabel.text = String(animation.duration)
        delayLabel.text = String(animation.delay)
        
    }
    
    @IBAction func changeAnimation() {
        
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(animation.force)
        durationLabel.text = String(animation.duration)
        delayLabel.text = String(animation.delay)
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        
        nextAnimationButton.setTitle("Run \(animation.preset)", for: .normal)
    }
    
}

