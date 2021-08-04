//
//  ViewController.swift
//  HW.9
//
//  Created by Anton Duplin on 3/8/21.
//

import Spring

class ViewController: UIViewController {
    
    private let listAnimations = Animation.getAnimationList()
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var labelAnimationView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // labelAnimationView.text = Spring
        // Do any additional setup after loading the view.
    }


    @IBAction func RunSpringButton(_ sender: SpringButton) {
        springAnimationView.animation = listAnimations.animations
        springAnimationView.curve = listAnimations.curve
        springAnimationView.force = CGFloat(listAnimations.forse)
        springAnimationView.duration = CGFloat(listAnimations.duration)
        springAnimationView.delay = CGFloat(listAnimations.delay)
        springAnimationView.animate()
        
        
        
        
        
//        springAnimationView.animation = "pop"
//        springAnimationView.curve = "easeInOut"
//        springAnimationView.force = 2
//        springAnimationView.duration = 1
//        springAnimationView.delay = 0.3

        sender.animation = listAnimations.animations
        sender.animate()
    }
}

