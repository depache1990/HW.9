//
//  DataManager.swift
//  HW.9
//
//  Created by Anton Duplin on 3/8/21.
//

import Spring


class DataManager {
    static let shared = DataManager()
    var animations:  [Spring.AnimationPreset] = [.shake, .slideRight, . fadeIn, .fall, .morph]
    var curve: [Spring.AnimationCurve] = [.easeIn, .easeInOutCubic, .easeInExpo, .easeInOut, .easeInBack]
    
    private init() {}
   
}























