//
//  IDkitView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/13.
//

import SwiftUI

struct IDkitView: View {
    var body: some View  {
        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                Image("logopng").resizable().frame(width:32, height: 32).padding(.horizontal, 9.0)
                Spacer()
                VStack{
                    VStack{
                        Button(action: goHome){
                            Text("Back Home").frame(width: 200, height: 50, alignment: .center)
                        }
                        .background(Color("SecondaryButtonColor"))
                        .foregroundColor(Color("SecondaryTextColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    }.padding(.vertical, 4.0)
                }
            }
        }
    }
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: HomeView())
            window.makeKeyAndVisible()
        }
    }
}


struct IDkitView_Previews: PreviewProvider {
    static var previews: some View {
        IDkitView()
    }
}
