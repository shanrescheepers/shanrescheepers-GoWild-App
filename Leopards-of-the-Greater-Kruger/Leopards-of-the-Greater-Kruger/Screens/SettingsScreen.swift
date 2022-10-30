//
//  SettingsScreen.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/16.
//


import FirebaseCore
import SwiftUI
import Firebase
import FirebaseDatabase
import FirebaseCoreExtension
import AVKit

struct SettingsScreen: View {
    @Binding var audioPlayer: AVAudioPlayer!
    @Binding var music: Bool
    @Binding var onboardingComplete: Bool
    
    @State private var playMusic = false

    var body: some View {
        VStack{
            VStack{
                Toggle("Music", isOn: $music)
                    .onChange(of: music,
                              perform: { _ in
                        
                        if music{
                          self.audioPlayer.play()
                      }else{
                          self.audioPlayer.stop()
                     }
                        
                    })
                Toggle("OnBoarding", isOn: $onboardingComplete)
                 
            }
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
//        SettingsScreen(audioPlayer: <#Binding<AVAudioPlayer?>#>, music: .constant(false))
        VStack{
            Text("Bo")
        }
    }
}
