
//  Leopard Data.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/15.
//

import SwiftUI
import Firebase


class AnimalData: ObservableObject {
    
    @Published var animals: [AnimalSchema] = []
//    useEffect
    init(){
        fetchAnimals()
    }
    func fetchAnimals() {
        animals.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("GoWildAnimals")
        ref.getDocuments{ snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            if let snapshot = snapshot {
                for document in snapshot.documents {
             
                    let data = document.data()
//                    print(data["Name"])
                    let id = data["id"] as? String ?? ""
                    let Name = data["Name"] as? String ?? ""
                    let LatinName = data["LatinName"] as? String ?? ""
                    let Diet = data["Diet"] as? String ?? ""
                    let Facts = data["Facts"] as? String ?? ""
                    let SocialStructure = data["SocialStructure"] as? String ?? ""
                    let Lifespan = data["Lifespan"] as? String ?? ""
                    let image = data["image"] as? String ?? ""
                    
                    
                    let animal = AnimalSchema(id: Name, Name: Name, LatinName: LatinName, Diet: Diet, Lifespan: Lifespan, SocialStructure: SocialStructure, Facts: Facts, image: image)
                    self.animals.append(animal)
                }
            }
//            print(self.animals)
        }
    }
}
