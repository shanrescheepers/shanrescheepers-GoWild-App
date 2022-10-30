import SwiftUI
import Firebase


class PhotographyData: ObservableObject {
    
    @Published var tips: [PhotographySchema] = []
//    useEffect
    init(){
        fetchTips()
    }
    func fetchTips() {
        tips.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("GoWildPhotography")
        ref.getDocuments{ snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["PType"] as? String ?? ""
                    let Aperture = data["Aperture"] as? String ?? ""
                    let DM = data["DM"] as? String ?? ""
                    let EM = data["EM"] as? String ?? ""
                    let FM = data["FM"] as? String ?? ""
                    let ISO = data["ISO"] as? String ?? ""
                    let PType = data["PType"] as? String ?? ""
                    let SS = data["SS"] as? String ?? ""
                    let TIP = data["TIP"] as? String ?? ""
                    let WB = data["WB"] as? String ?? ""
                    let image = data["image"] as? String ?? ""
                    
                    let tip = PhotographySchema(id: id, Aperture: Aperture, DM: DM, EM: EM, FM: FM, ISO: ISO, SS: SS, TIP: TIP, PType: PType, WB:WB, image: image)
                    self.tips.append(tip)
                }
            }
        }
    }
}
