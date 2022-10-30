//
//  HomeView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/11.
//

import SwiftUI
import Firebase

struct HomeView: View {
    
    @StateObject var animalData = AnimalData()
    @StateObject var photoData = PhotographyData()
    @State private var path = NavigationPath()
    @State var searchText = ""
    @State var isLinkActive = false
    var body: some View {
        NavigationView {
            ZStack{
                Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                Image("newlogo").resizable().frame(width:40, height: 50).padding(.top, -7.0)
                VStack{
                    NavigationLink{
                        LeopardLibrary().environmentObject(animalData)
                    }label: {
                        VStack{
                            VStack{
                                HStack{
                                    Image("libraryiconblack").padding(.leading, 10.0)
                                    Text("ANIMAL LIBRARY").multilineTextAlignment(.leading)
                                        .frame(width: 200, height: 40).padding()
                                }
                            }
                            .background(Color("MainButtonColor"))
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .frame(width: 350, height: 80).padding(1)
                            
                            Text("Learn more about our library of iconic animals to be found on your safaris!")
                                .multilineTextAlignment(.center).padding(.top, -9.0) .frame(width: 250.0)
                        }  .foregroundColor(Color(.black))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                }
                VStack{
                    NavigationLink{
                        MapScreen().environmentObject(photoData)
                    }label: {
                        VStack{
                            VStack{
                                HStack{
                                    Image("photographyiconblack").padding(.leading, 10.0)
                                    Text("PHOTOGRAPHY TIPS")
                                        .frame(width: 200, height: 40).padding()
                                }
                            }
                            .background(Color("MainButtonColor"))
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .frame(width: 320, height: 80).padding()
                            
                            Text("For the best safari photographs, use our photography safari kit on your next adventure.").multilineTextAlignment(.center) .frame(width: 250.0).padding(.top, -9.0)
                        }  .foregroundColor(Color(.black))
                            .multilineTextAlignment(.center)
                          
                    }
                }
                VStack{
                    NavigationLink{
                        IDkitView()
                    }label: {
                        VStack{
                            VStack{
                                HStack{
                                    Image("blackmap").padding(.leading, 10.0)
                                    Text("HABITAT MAP ").multilineTextAlignment(.leading)
                                        .frame(width: 200, height: 40).padding()
                                }
                            }
                            .background(Color("MainButtonColor"))
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .frame(width: 300, height: 80).padding()
                            
                            Text("See our guide to find out where you can spot these iconic animals!")
                                .multilineTextAlignment(.center)
                                .padding(.top, -8.0)
                                .frame(width: 250.0)
                        }  .foregroundColor(Color(.black))
                            .multilineTextAlignment(.center)
                          
                    }
                    Spacer()
                }
            }  .background(Color("BackgroundColor"))
        }
    }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
        
    }
}
