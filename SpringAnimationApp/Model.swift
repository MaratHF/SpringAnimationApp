//
//  Model.swift
//  SpringAnimationApp
//
//  Created by MAC  on 06.04.2022.
//

import Spring

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: round(Double.random(in: 1...3) * 1000) / 1000,
            duration: round(Double.random(in: 1...2) * 1000) / 1000,
            delay: round(Double.random(in: 0...1) * 1000) / 1000
        )
    }
}


