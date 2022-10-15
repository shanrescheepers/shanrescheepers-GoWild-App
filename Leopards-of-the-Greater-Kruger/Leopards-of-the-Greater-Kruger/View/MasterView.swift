//
//  MasterView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/15.
//

import SwiftUI

struct MasterView: View {
    var body: some View {
        
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
        }
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
