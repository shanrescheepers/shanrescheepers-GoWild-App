//
//  SettingsScreen.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/16.
//


import FirebaseCore
import SwiftUI
import Firebase
import FirebaseDatabase
import FirebaseCoreExtension
import AVKit

struct SettingsScreen: View {
    @Binding var audioPlayer: AVAudioPlayer!
    @Binding var music: Bool
    @Binding var onboardingComplete: Bool
    
    @State private var playMusic = false

    var body: some View {
//
        ZStack{
            
            Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                VStack{
                    Image("mainlogo").resizable().frame(width:250, height: 250).padding()
                }
                VStack{
                    Text("This App is dedicated to all African wildlife lovers on and off safari vehicles.").font(.title3).multilineTextAlignment(.center).padding(1)
                    VStack{
                        VStack{
                            Text("App Description").font(.caption).fontWeight(.bold).multilineTextAlignment(.center).padding(.bottom, 8.0).padding(.top, 8)
                        }
                        VStack{
                         
                            VStack{
                                Text("GoWild, the library app that makes finding magnificent animals on safari with more ease and knowledge, capturing photographs of professional quality as you venture forth.I, Shanré Scheepers, the developer of GoWild African Safari Wildlife Guide, hope this app can be of use for you on all your safaris you venture on.")
                                    .multilineTextAlignment(.leading) .font(.system(size: 12, weight: .medium, design: .rounded)).padding(.bottom, 5.0)
                                Text("All Photographs taken by Shanré Scheepers & Emily Whiting.").fixedSize(horizontal: false, vertical: true).font(.caption).multilineTextAlignment(.center).foregroundColor(Color("NavIcon"))
                            }.fixedSize(horizontal: false, vertical: true).padding(.horizontal, 5)
                            
                        }.fixedSize(horizontal: false, vertical: true)
                        .padding(.bottom, 8.0)
                        VStack{
                            HStack{
                                Text("[Click Here for the Github Link](https://github.com/shanrescheepers/LeopardsoftheGreaterKruger)").font(.caption).foregroundColor(Color("NavIcon")).padding(.leading, 15.0)
                                Spacer()
                                Text("Version 1.0")
                                    .multilineTextAlignment(.trailing).font(.caption).padding(.trailing, 15.0)
                            }.foregroundColor(.black)
                        } .padding(.bottom, 8.0)
                        VStack{
                            VStack{
                                Text("This is a limited version including 8 mammals and 4 photography tips. You can upgrade to a full version for R129.99 to get access to the most seen animals on safari: 70 mammals, 121 birds and more pro photography tips.")
                            }.padding(.horizontal, 10.0).multilineTextAlignment(.leading).fixedSize(horizontal: false, vertical: true) .font(.caption2)
                            Text("Buy Full Version for R129.99")
                                .frame(width: 380.0, height: 50.0).background(Color("SecondaryButtonColor").clipShape(RoundedRectangle(cornerRadius: 25)))
                        } .padding(.bottom, 8.0)
                        HStack{
                            HStack{
                                Toggle("Music", isOn: $music)
                                    .padding(.leading, 10.0)
                                    .font(.caption).fontWeight(.bold)
                                    .onChange(of: music,
                                              perform: { _ in
                
                                        if music{
                                          self.audioPlayer.play()
                                      }else{
                                          self.audioPlayer.stop()
                                     }
                
                                    })
                            }
                            Spacer()
                                .padding(.bottom, 10.0)
                            HStack{
                                Toggle("Onboard", isOn: $onboardingComplete).padding(.leading, 0.0).font(.caption).fontWeight(.bold)
                            }
                            .padding(.bottom, 10.0)
                            
            
                        }
                        .padding(.trailing, 6.0)
                        .padding(.leading)
                    }
                    .fixedSize(horizontal: false, vertical: false)
                   .background(Color("DivColor")).clipShape(RoundedRectangle(cornerRadius: 25))
                        }
                Spacer()
            }
      
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
//        SettingsScreen(audioPlayer: <#Binding<AVAudioPlayer?>#>, music: .constant(false))
        VStack{
            Text("Bo")
        }
    }
}
