//
//  SplashScreenView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct SplashScreenView: View {
    // Animation Properties
    
    //instead of creating seperate states for each animation were creating a array of State Variables fo animations
    @State var animationValues: [Bool] = Array(repeating: false, count: 10)
    var body: some View {
        ZStack(alignment: .center){
            Color("BackgroundColor")  .ignoresSafeArea()
            
            VStack(alignment: .center){
                Image("leopardslogo").resizable(resizingMode: .tile).fixedSize().padding(.horizontal, 9.0)
                Spacer()
                    .frame(height: 20)
                Text("Everything you need,to spot these iconic leopards in the wild!").multilineTextAlignment(.center).padding(.top, 8.0)
                Spacer()
                    .frame(height: 20)
                Image("compass").fixedSize()
            }
            
           
          
            // Home View
         
            // Splash Screen View
           
            //always light more
            .environment(\.colorScheme, .light)
              
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
