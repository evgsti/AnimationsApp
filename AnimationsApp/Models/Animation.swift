//
//  Animation.swift
//  AnimationsApp
//
//  Created by Евгений on 31.08.2024.
//

struct AnimationSettings {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    func animationInfo() -> String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static var randomAnimation: AnimationSettings {
        AnimationSettings(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0.5...1),
            duration: Double.random(in: 0.5...1),
            delay: Double.random(in: 0.1...0.8)
        )
    }
}
