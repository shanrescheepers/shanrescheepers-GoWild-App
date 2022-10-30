//
//  IndividualAnimal.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/30.
//

import SwiftUI
import Firebase
import FirebaseDatabase
import FirebaseCoreExtension
import SDWebImageSwiftUI
struct IndividualAnimal: View {
//    @StateObject var animalData = AnimalData()
    var animal: AnimalSchema
    var body: some View {
        
        VStack{
            WebImage(url: URL(string: animal.image))
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(animal.Name)
        }
    }
}

struct IndividualAnimal_Previews: PreviewProvider {
    static var previews: some View {
//        IndividualAnimal(name: "Preview")
        VStack{
            Text("Bo")
        }
    }
}
