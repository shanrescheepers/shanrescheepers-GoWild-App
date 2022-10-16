//
//  LeopardLibrary.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/13.
//

import SwiftUI

struct LeopardLibrary: View {
    
    @EnvironmentObject var leopardData: LeopardData
    
    var body: some View {
      
        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                Image("logopng").resizable().padding(.top, -50.0).frame(width:62, height: 18)
                VStack{
                 
               
                    List(leopardData.leopards, id: \.id){
                            leopard in Text(leopard.name) }
                        }.scrollContentBackground(.hidden)
//                        .background(Color("BackgroundColor"))
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
                    ForEach(leopardData.leopards) { leopard in Text(leopard.name)}
                }
            
                }
          
            }
        }
    }
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: MasterView())
            window.makeKeyAndVisible()
        }
    }


struct LeopardLibrary_Previews: PreviewProvider {
    static var previews: some View {
        LeopardLibrary()
        
    }
}
