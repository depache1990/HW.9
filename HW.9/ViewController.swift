//
//  ViewController.swift
//  HW.9
//
//  Created by Anton Duplin on 3/8/21.
//

import Spring

class ViewController: UIViewController {
    
    private var listAnimations = Animation.getAnimationList()
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var labelAnimationView: UILabel!
    
    
    override func viewDidLoad() {
        labelAnimationView.text = """
                                Name: \(listAnimations.present)
                                Curve: \(listAnimations.curve)
                                Force: \(listAnimations.forse)
                                Duration: \(listAnimations.duration)
                                Delay: \(listAnimations.delay)
                                """
        
        super.viewDidLoad()
       
    }
    
    @IBAction func RunSpringButton(_ sender: SpringButton) {
        
        springAnimationView.animation = listAnimations.present
        springAnimationView.curve = listAnimations.curve
        springAnimationView.force = CGFloat(listAnimations.forse)
        springAnimationView.duration = CGFloat(listAnimations.duration)
        springAnimationView.delay = CGFloat(listAnimations.delay)
        listAnimations = Animation.getAnimationList()
        springAnimationView.animate()
        
        labelAnimationView.text = """
                                Name: \(listAnimations.present)
                                Curve: \(listAnimations.curve)
                                Force: \(listAnimations.forse)
                                Duration: \(listAnimations.duration)
                                Delay: \(listAnimations.delay)
                                """
        sender.setTitle("Run: \(listAnimations.present)", for: .normal)

    }
}

