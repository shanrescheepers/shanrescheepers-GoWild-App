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
struct LeopardLibrary: View {
    
    @State private var imageURL = URL(string: "")
    @State private var imageName = "lion.png"
    
    @EnvironmentObject var animalData: AnimalData
    
    
    var body: some View {
        
        
        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                Image("newlogo").resizable().padding(.top, -40.0).frame(width:62, height: 18)
                HStack{
                    SearchBarView()
                }
                VStack{
                    HStack{
                        Image("libraryiconblack").padding(.leading, 10.0)
                        Text("ANIMAL LIBRARY").multilineTextAlignment(.leading)
                            .frame(width: 200, height: 40).padding()
                    }
                }
                .background(Color("MainButtonColor"))
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .frame(width: 350, height: 80).padding()
                ScrollView{
                    
                    //                    List(animalData.animals, id: \.id){
                    //                            animal in Text(animal.Name) }
                    //                        }.scrollContentBackground(.hidden)
                    //                        .background(Color("BackgroundColor"))
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum:100)), GridItem(.adaptive(minimum:100))], spacing: 20){
                        ForEach(animalData.animals) { animal in
                            
                            VStack{
//                                Image("lion").padding()
                                VStack{
                                    WebImage(url: URL(string: animal.image))
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                    
                                }.onAppear {
                                    loadImageFromFirebase(image: animal.image)
                                }
                                HStack{
                                    Button(action: goHome) {
                                        Text(animal.Name).frame(width: 150, height: 50)
                                    }
                                }.background(Color("MainButtonColor"))
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
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
