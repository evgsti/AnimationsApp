//
//  DataStore.swift
//  AnimationsApp
//
//  Created by Евгений on 31.08.2024.
//

import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
