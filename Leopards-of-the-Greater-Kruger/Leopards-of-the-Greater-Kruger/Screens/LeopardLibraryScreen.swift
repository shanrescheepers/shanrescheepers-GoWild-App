//
//  LeopardLibraryScreen.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/16.
//

import SwiftUI
import Firebase


struct LeopardLibraryScreen: View {
    @StateObject var leopardData = LeopardData()
    
    var body: some View {

        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
            LeopardLibrary().environmentObject(leopardData).padding(.top, 43.0)
        }
    }
}

struct LeopardLibraryScreen_Previews: PreviewProvider {
    static var previews: some View {
        LeopardLibraryScreen()
    }
}
