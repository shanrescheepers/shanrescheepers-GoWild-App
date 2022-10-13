//
//  HomeView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI

struct HomeView: View {
    @State private var path = NavigationPath()
    @State var searchText = ""
    
    var body: some View {
        ZStack{
        
            Color("BackgroundColor")  .ignoresSafeArea()
//
            VStack{
                Image("logopng").resizable().frame(width:32, height: 32).padding(.horizontal, 9.0)
                VStack{
                    Image(systemName: "square.grid.2x2.fill")
                       
                } .padding(.leading, 5.0)
//                NavigationView{
//                          Text("Search")
//                      }
//                .searchable(text: $search).frame(width: 250, height: 40)   .clipShape(RoundedRectangle(cornerRadius: 15)).foregroundColor(Color("NavIconsColor"))
                
                SearchBarView()
                
                VStack{
                    
                    VStack{
                        Button(action: goToLibrary){
                            Text("LEOPARD LIBRARY").frame(width: 200, height: 50, alignment: .center)
                        }
                        .background(Color("SecondaryButtonColor"))
                        .foregroundColor(Color("SecondaryTextColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
         
                        Text("Our iconic leopards can be found in the Greater Kruger. Learn more about our library of iconic leopards to be found on your safaris!")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                   
                       
                    }.padding(.vertical, 4.0)
                    VStack{
                        Button(action:goToIDKit){
                            Text("ID KIT TUTORIAL").frame(width: 200, height: 50, alignment: .center)
                        }
                        .background(Color("SecondaryButtonColor"))
                        .foregroundColor(Color("SecondaryTextColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                        Text("See our library on how to identify each leopard using our image identification kit.")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }.padding(.vertical, 4.0)
                    VStack{
                        Button(action: {
                            //doa ction
                            print("Location PRESSED")
                            
                        }) {
                            Text("LEOPARD LOCATIONS").frame(width: 200, height: 50, alignment: .center)
                        }
                        .background(Color("SecondaryButtonColor"))
                        .foregroundColor(Color("SecondaryTextColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        
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
            window.rootViewController = UIHostingController(rootView: LeopardLibrary())
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
