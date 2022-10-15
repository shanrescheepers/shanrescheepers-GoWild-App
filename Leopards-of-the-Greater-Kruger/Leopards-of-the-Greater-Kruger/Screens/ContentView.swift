//
//  ContentView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/10.
//

import SwiftUI //core functionality to build swift frontend
import Firebase
//appstorage
//firebase storage - make api call - map data you need
//n view is n fragment wat jy in n screen kan sit
struct ContentView: View {
    var body: some View {
//        stack is like a div to wrap content in
//        cmnd shift l shortcut for library
        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
           OnboardingViewScreens123()
                .navigationBarHidden(false)
           
        }
    
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
