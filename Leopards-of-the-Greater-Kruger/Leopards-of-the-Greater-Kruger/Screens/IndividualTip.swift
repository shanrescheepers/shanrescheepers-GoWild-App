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
struct IndividualTip: View {
    
//    @StateObject var animalData = AnimalData()
    var tip: PhotographySchema
    var body: some View {
        
        VStack{
            WebImage(url: URL(string: tip.image))
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(tip.PType)
        }
        
    }
}

struct IndividualTip_Previews: PreviewProvider {
    static var previews: some View {
//        IndividualTip(data: [AnyObject])
        VStack{
            Text("Bo")
        }
    }
}
