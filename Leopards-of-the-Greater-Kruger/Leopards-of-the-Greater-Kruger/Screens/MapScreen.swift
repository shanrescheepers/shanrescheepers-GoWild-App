//
//  LeopardLibrary.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/13.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseStorage
import SDWebImageSwiftUI
struct MapScreen: View {
    
    @State private var imageURL = URL(string: "")
    @State private var imageName = "lion.png"
    
    @EnvironmentObject var photographyData: PhotographyData
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color("BackgroundColor")  .ignoresSafeArea()
                VStack{
                   
                    
                    VStack{
                        HStack{
                            Image("libraryiconblack").padding(.leading, 10.0)
                            Text("PHOTOGRAPHY TIPS").multilineTextAlignment(.leading)
                                .frame(width: 200, height: 40).padding()
                        }
                    }
                    .background(Color("MainButtonColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .frame(width: 350, height: 80).padding()
                    ScrollView{
               
                        LazyVGrid(columns: [GridItem(.adaptive(minimum:100)), GridItem(.adaptive(minimum:100))], spacing: 20){
                            ForEach(photographyData.tips) { tip in
                                
                                VStack{
                                    //                                Image("lion").padding()
                                    VStack{
                                        NavigationLink(
                                            destination: IndividualTip(tip: tip)
                                        ){ Text("")
                                            
                                            WebImage(url: URL(string: tip.image))
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                        }
                                        
                                        
                                    }.onAppear {
                                        loadImageFromFirebase(image: tip.image)
                                    }.navigationBarBackButtonHidden(true)
                                    HStack{
                                        //   Button(action: goHome) {
                                        //                                            Text(tip.PType).frame(width: 150, height: 50)
                                        
                                       
                                    }
                                }
                            }
                        }
                        
                    }}
                Spacer()
            }
        }
    }
    
    
    
    func loadImageFromFirebase(image: String) -> Void{
        let storageRef = Storage.storage().reference(withPath: image)
        storageRef.downloadURL { (url, error) in
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            self.imageURL = url!
            
        }
    }
}




struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
        
    }
}

