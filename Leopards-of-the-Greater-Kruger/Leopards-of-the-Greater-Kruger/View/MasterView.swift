//
//  MasterView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/15.
//

import SwiftUI

struct MasterView: View {
    @StateObject var leopardData = LeopardData()
    var body: some View {
        
        
        TabView{
            HomeView()
                .tabItem{
                    Image("tabhome")
                    Text("Home")
                }
            LeopardLibraryScreen()
                .tabItem{
                    Image("tableopard")
                    Text("Library")
                }
            MapScreen()
                .tabItem{
                    Image("tabmap")
                    Text("Live Map")
                }
            SettingsScreen()
                .tabItem{
                    Image("tabsetting")
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
