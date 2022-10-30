//
//  Card3View.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI
import AVKit
struct Card3View: View {
    @State var audioPlayer: AVAudioPlayer!
    @State private var path = NavigationPath()
    @AppStorage("onboardingComplete") var onboardingComplete =  false
        var body: some View {
                VStack{
                    VStack(alignment: .center){
                        ZStack{
                            Spacer()
                            Image("identification 1").resizable().aspectRatio(contentMode: .fit)
                        }.padding(.top, 20).padding(.horizontal, 5.0).padding(.leading, 4.0)//zstack
                        Button(action: {
                            //doa ction
                            print("Identification Pressed")
                            
                        }) {
                            Text("DIY IDENTIFICATION").frame(width: 200, height: 50, alignment: .center)
                        }
                        .background(Color("SecondaryButtonColor"))
                        .foregroundColor(Color("SecondaryTextColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                        VStack(alignment: .center){
                            Button(action: goHome) {
                                HStack(alignment: .center) {
                                    Spacer()
                                    
                                    Text("Get Started").foregroundColor(Color.black).bold()
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                    Spacer()
                                }
                            }
                        }
                        }.padding(.top, 10.0)
            }
        }
    func goHome() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: MasterView(audioPlayer: $audioPlayer))
            window.makeKeyAndVisible()
            onboardingComplete = false
        }
    }
}
//VStack{
//    Image("compass").fixedSize()


struct Card3View_Previews: PreviewProvider {
    static var previews: some View {
        Card3View()
    }
}
