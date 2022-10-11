//
//  Card3View.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct Card3View: View {
    @State private var path = NavigationPath()

        var body: some View {
            ZStack{
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack{
                    Image("logopng").resizable().frame(width:32, height: 32).padding(.horizontal, 9.0)
//                    NavigationStack(path: $path) {
//                        Button {
//                            path.append("HomeView")
//
//                        } label: {
//                            Text("CLICK HERE TO START").frame(width: 100, height: 10)
//                        }
//
//                        .navigationDestination(for: String.self) { view in HomeView()
//                            if view == "HomeView" {
//
//                            }
//                        }
//                        .frame(width: 100, height: 10)
//                    }
                    Spacer()
                    Button(action: goHome) {
                        HStack(alignment: .center) {
                            Spacer()
                            Text("START").foregroundColor(Color.white).bold()
                            Spacer()
                        }
                    }

                   
                    VStack{
                        Image("compass").fixedSize()
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
//VStack{
//    Image("compass").fixedSize()
//}

struct Card3View_Previews: PreviewProvider {
    static var previews: some View {
        Card3View()
    }
}
