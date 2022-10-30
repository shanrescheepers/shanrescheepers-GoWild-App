//
//  LeopardLibraryScreen.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/16.
//


import SwiftUI
import Firebase
import FirebaseDatabase
import FirebaseCoreExtension

struct LeopardLibraryScreen: View {
    @StateObject var animalData = AnimalData()
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BackgroundColor")  .ignoresSafeArea()
                LeopardLibrary().environmentObject(animalData).padding(.top, 43.0)
            }
        }
    }
}

struct LeopardLibraryScreen_Previews: PreviewProvider {
    static var previews: some View {
        LeopardLibraryScreen()
    }
}
