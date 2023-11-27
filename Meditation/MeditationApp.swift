//
//  MeditationApp.swift
//  Meditation
//
//  Created by Thaoly Ngo on 11/26/23.
//

import SwiftUI

@main
struct MeditationApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
