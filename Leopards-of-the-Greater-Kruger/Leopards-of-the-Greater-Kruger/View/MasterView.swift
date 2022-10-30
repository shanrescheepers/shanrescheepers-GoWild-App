//
//  MasterView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/15.
//

import SwiftUI
import AVKit
struct MasterView: View {
//    @StateObject var leopardData = LeopardData()
    @AppStorage("onboardingComplete") var onboardingComplete =  false
    @StateObject var photoData = PhotographyData()
    @AppStorage("music") private var music =  false
    @Binding var audioPlayer: AVAudioPlayer!
    var body: some View {
        
        
        TabView{
            HomeView()
                .tabItem{
                    Image("tabhome")
                    Text("Home")
                }
            LeopardLibraryScreen()
                .tabItem{
                    Image("libraryicon")
                    Text("Animal Library")
                }
            MapScreen()
               
                .environmentObject(photoData)
                .tabItem{
                    Image("photographyicon")
                    Text("Camera Tips")
                }
            SettingsScreen(audioPlayer: $audioPlayer, music: $music, onboardingComplete: $onboardingComplete)
                .tabItem{
                    Image("tabsettings")
                    Text("Settings")
                }
        }.background(Color("BackgroundColor"))
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
//        MasterView()
        VStack{
            Text("Bo")
        }
    }
}
