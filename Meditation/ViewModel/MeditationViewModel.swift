//
//  MeditationViewModel.swift
//  Meditation
//
//  Created by Thaoly Ngo on 11/26/23.
//

import Foundation

struct Meditation {
    let id = UUID()
    let title : String
    let description : String
    let duration : TimeInterval
    let track : String
    let image : String
    
    static let data = Meditation(title: "1-Minute Relaxing Meditation", description: "Clear your mind and slumber into nothingness. Allocate only a few moments for a quick breather.", duration: 70, track: "meditation_1", image: "stone-image")
}


final class MeditationViewModel : ObservableObject {
    
    private(set) var meditation : Meditation
    
    let data = [
        Meditation(title: "Tibet Meditation", description: "Immerse yourself in the soothing melodies, where traditional Tibetan instruments harmonize with ambient textures to create a meditative sanctuary for inner peace and mindfulness.", duration: 70, track: "meditation_1", image: "stone-image"),
        Meditation(title: "Thunder Meditation", description: "Let the soothing echoes of thunder and gentle raindrops create a harmonious atmosphere, providing a sanctuary for introspection and tranquility.", duration: 70, track: "meditation_2", image: "stone-image"),
        Meditation(title: "Space Meditation", description: "Immerse yourself in the ethereal melodies, a sonic voyage that transcends earthly boundaries, creating a serene haven for contemplation and cosmic connection.", duration: 70, track: "meditation_2", image: "stone-image"),
        Meditation(title: "Aerial Meditation", description: "Let the celestial soundscape guide your meditation, creating a harmonious space where the mind ascends and finds peace among the clouds.", duration: 70, track: "meditation_2", image: "stone-image")
    ]
    
    init(meditation: Meditation) {
        self.meditation = meditation
    }
    
}
