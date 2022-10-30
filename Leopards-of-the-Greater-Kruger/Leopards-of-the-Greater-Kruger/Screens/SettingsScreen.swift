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
    @State var audioPlayer: AVAudioPlayer!
    @AppStorage("music") var music =  false
    
    var body: some View {
        VStack{
            
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
