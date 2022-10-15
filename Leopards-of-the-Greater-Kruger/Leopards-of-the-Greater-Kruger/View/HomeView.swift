//
//  HomeView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI
import Firebase

struct HomeView: View {
    
    @StateObject var leopardData = LeopardData()
    @State private var path = NavigationPath()
    @State var searchText = ""
    @State var isLinkActive = false
    var body: some View {
        
        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
            
            VStack{
                Image("logopng").resizable().frame(width:32, height: 32).padding(.horizontal, 9.0)
                
                VStack{
                    Image(systemName: "square.grid.2x2.fill")
                    
                    
                } .padding(.leading, 5.0)
                SearchBarView()
                
                VStack{
                    VStack{
                        Button(action: goToLibrary){
                            
                            HStack{
                                Image("blackleopardicon").padding(5)
                                Text("LEOPARD LIBRARY").frame(width: 200, height: 50, alignment: .leading).padding(.leading, 4.0)
                            }
                            .frame(width: 300, height: 80)
                        }
                        .background(Color("MainButtonColor"))
                        .foregroundColor(Color(.black))
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        
                        Text("Our iconic leopards can be found in the Greater Kruger. Learn more about our library of iconic leopards to be found on your safaris!")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        
                    }.padding(.vertical, 4.0)
                    VStack{
                        Button(action:goToIDKit){
                            
                            HStack{
                                Image("binos").padding(5)
                                Text("ID KIT TUTORIAL").frame(width: 200, height: 50, alignment: .leading).padding(.leading, 11.0)
                            }
                            .frame(width: 300, height: 80)
                        }
                        .background(Color("MainButtonColor"))
                        .foregroundColor(Color(.black))
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        
                        Text("See our library on how to identify each leopard using our image identification kit.")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }.padding(.vertical, 4.0)
                    VStack{
                        Button(action: {
                            //doa ction
                            print("Location PRESSED")
                            
                        }) {
                            HStack{
                                Image("blackmap").padding(5)
                                Text("LEOPARD LOCATIONS").frame(width: 200, height: 50).padding(.leading, 4.0)
                            }
                            .frame(width: 300, height: 80)
                        }
                        .background(Color("MainButtonColor"))
                        .foregroundColor(Color(.black))
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        
                        Text("See our guide to find out where you can spot these iconic leopards with tips on how and where to spot them!")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }.padding(.vertical, 4.0)
                    Spacer()
                    
                    
                }
                
            }
            
            //hierdie maak dat die back button nie gewys word nie
            //            .navigationBarHidden(false)
        }
        //        .navigationBarHidden(false)
    }
    func goToLibrary() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: LeopardLibrary().environmentObject(leopardData))
            window.makeKeyAndVisible()
        }
    }
    func goToIDKit() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: IDkitView())
            window.makeKeyAndVisible()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
        
    }
}
