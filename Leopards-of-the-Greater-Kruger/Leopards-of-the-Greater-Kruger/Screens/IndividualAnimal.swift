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
        
        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                VStack{
                    Image("newlogo").resizable().padding(.top, -35).frame(width:40, height: 10)
                }
                .padding(.top, -10.0)
                
                VStack{
                    VStack{
                        WebImage(url: URL(string: animal.image))
                            .frame(width: 150.0, height: 150.0)
                        
                        ScrollView{
                            VStack{
                                Text(animal.Name).font(.largeTitle)
                                Text("Latin Name").font(.caption).multilineTextAlignment(.leading).padding(.leading).padding(.top, 10.0)
                                Text(animal.LatinName).italic().padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                VStack{
                                    Text("Lifespan").font(.caption).padding(.top, 10.0)
                                    Text(animal.Lifespan).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }
                                VStack{
                                    Text("Diet").font(.caption).padding(.top, 10.0)
                                    Text(animal.Diet).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }.padding(.horizontal, 10.0)
                                VStack{
                                    Text("Social Structure").font(.caption).padding(.top, 10.0)
                                    Text(animal.SocialStructure).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }.padding(.horizontal, 10.0)
                                VStack{
                                    Text("Interesting Facts").font(.caption).padding(.top, 10.0)
                                    Text(animal.Facts).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }.padding(.horizontal, 10.0)
                                
                           
                            }
                        }
                    }
                    
                    Spacer()
                }
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
}
