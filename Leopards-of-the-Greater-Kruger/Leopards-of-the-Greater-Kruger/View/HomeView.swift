//
//  HomeView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                Text("Hello, Home")
            }
            //hierdie maak dat die back button nie gewys word nie
            .navigationBarHidden(true)
        }
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
