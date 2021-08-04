//
//  Animations.swift
//  HW.9
//
//  Created by Anton Duplin on 4/8/21.
//

import Foundation

struct Animation {
    let present: String
    let curve: String
    let forse: Float
    let duration: Float
    let delay: Float
    var animations: String {
        "\(present) \(curve) \(forse) \(duration) \(delay)"
    }
    
    
    
}
extension Animation {
    static func getAnimationList() -> Animation {
       Animation(
        present: DataManager.shared.animations.randomElement()?.rawValue ?? "",
        curve: DataManager.shared.curve.randomElement()?.rawValue ?? "",
        forse: Float.random(in: 1...2),
        duration: Float.random(in: 1...2),
        delay: 0.3
       )
    }
    
}
