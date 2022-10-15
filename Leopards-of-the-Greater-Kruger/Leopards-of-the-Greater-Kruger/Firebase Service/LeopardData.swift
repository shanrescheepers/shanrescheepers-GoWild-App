//
//  Leopard Data.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/15.
//

import SwiftUI
import Firebase


class LeopardData: ObservableObject {
    
    @Published var leopards: [LeopardSchema] = []
//    useEffect
    init(){
        fetchLeopards()
    }
    func fetchLeopards() {
        leopards.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Leopards")
        ref.getDocuments{ snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    let Img1 = data["Img1"] as? String ?? ""
                    let Img2 = data["Img2"] as? String ?? ""
                    let Img3 = data["Img3"] as? String ?? ""
                    let age = data["age"] as? String ?? ""
                    let descriptionLeopards = data["descriptionLeopards"] as? String ?? ""
                    
                    let idKitTutorial = data["idKitTutorial"] as? [String] ?? []
                    let location = data["location"] as? String ?? ""
                    let lodges = data["lodges"] as? [String] ?? []
                    
                    let leopard = LeopardSchema(id: id, name: name, Img1: Img1, Img2: Img2, Img3: Img3, age: age, descriptionLeopards: descriptionLeopards, idKitTutorial: idKitTutorial, location: location, lodges: lodges)
                    self.leopards.append(leopard)
                }
            }
        }
    }
}
