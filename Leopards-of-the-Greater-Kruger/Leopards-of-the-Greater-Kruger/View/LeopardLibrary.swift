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
    @State private var goesToIndividual: Bool = false
    
    @EnvironmentObject var animalData: AnimalData
    @State var searchText = ""
//    @State private var showingActivity = false
    
    var body: some View {
        
        
        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                Text("Quick Tip: Search for an African Mammal below").font(.subheadline).fontWeight(.black).multilineTextAlignment(.center).padding()
                HStack{
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(
                                searchText.isEmpty ? (Color.white) : (Color.white)
                            )
                        TextField("Search Animal...", text: $searchText)
                            .foregroundColor(Color(.white))
                            .overlay(
                                Image(systemName: "xmark.circle.fill")
                                    .padding()
                                    .offset(x: 10)
                                    .foregroundColor(Color(.white))
                                    .opacity(searchText.isEmpty ? 0.0 : 1.0)
                                
                                    .onTapGesture {
                                        searchText = ""
                                    }.accentColor(.white)
                                ,alignment: .trailing
                            )
                    }.accentColor(.white).foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 25)
                        .shadow(
                            color:(Color("SecondaryTextColor")), radius:10, x:0.0, y:0.0)
                    ).opacity(0.5)
                        .padding()
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
                    LazyVGrid(columns: [GridItem(.adaptive(minimum:100)), GridItem(.adaptive(minimum:100))], spacing: 20){
                        ForEach(animalData.animals) { animal in
                            if (searchText == ""  || animal.Name.lowercased().contains(searchText.lowercased())) {
                                VStack{
                                    VStack{
                                        WebImage(url: URL(string: animal.image))
                                                    .resizable() .frame(width: 100.0, height: 100.0)
                                                    
                                    }.onAppear {
                                        loadImageFromFirebase(image: animal.image)
                                    }
                                    HStack{
                                        NavigationLink(
                                            destination: IndividualAnimal(animal: animal)
                                        ){ Text(animal.Name).frame(width: 150, height: 50)}
                                        
                                    }.background(Color("MainButtonColor"))
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                }
                            }
                        }
                        
                    }}
                .padding(.horizontal, 5.0)
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
//    func goHome() {
//        if let window = UIApplication.shared.windows.first {
//            window.rootViewController = UIHostingController(rootView: MasterView())
//            window.makeKeyAndVisible()
//        }
//    }




struct LeopardLibrary_Previews: PreviewProvider {
    static var previews: some View {
        LeopardLibrary()
        
    }
}
