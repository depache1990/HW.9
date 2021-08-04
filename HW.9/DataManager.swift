//
//  DataManager.swift
//  HW.9
//
//  Created by Anton Duplin on 3/8/21.
//

import Spring


class DataManager {
    static let shared = DataManager()
    var animations:  [Spring.AnimationPreset] = Spring.AnimationPreset.allCases
    var curve: [Spring.AnimationCurve] = Spring.AnimationCurve.allCases
    private init() {}
   
}























