//
//  MasterView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/15.
//

import SwiftUI

struct MasterView: View {
//    @StateObject var leopardData = LeopardData()
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
                .tabItem{
                    Image("photographyicon")
                    Text("Camera Tips")
                }
            SettingsScreen()
                .tabItem{
                    Image("tabsettings")
                    Text("Settings")
                }
        }.background(Color("BackgroundColor"))
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
