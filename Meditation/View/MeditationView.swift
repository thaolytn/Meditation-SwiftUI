//
//  MeditationView.swift
//  Meditation
//
//  Created by Thaoly Ngo on 11/26/23.
//

import SwiftUI

struct MeditationView: View {
    
    @State var meditationVM : MeditationViewModel
    @State private var showPlayer = false
    
    var body: some View {
        VStack(spacing: 0) {
            //MARK: - Image
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            //MARK: - Meditation Info
            ZStack {
                
                //MARK: - Background
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
                VStack(alignment: .leading, spacing: 24) {
                    
                    //MARK: - Type & Duration
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.meditation.duration) ?? meditationVM.meditation.duration.formatted() + "S")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    //MARK: - Title
                    Text(meditationVM.meditation.title)
                        .font(.title)
                    
                    //MARK: - Play Button
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }

                    //MARK: - Description
                    Text(meditationVM.meditation.description)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
                
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(meditationVM: meditationVM)
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)
    
    static var previews: some View {
        MeditationView(meditationVM: meditationVM)
            .environmentObject(AudioManager())
    }
}
