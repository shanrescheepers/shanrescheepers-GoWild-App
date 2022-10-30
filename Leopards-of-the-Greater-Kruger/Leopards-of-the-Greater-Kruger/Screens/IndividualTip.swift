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
        
        //        VStack{
        //            WebImage(url: URL(string: tip.image))
        //                .resizable()
        //                .aspectRatio(contentMode: .fit)
        //            Text(tip.PType)
        //        }
        ZStack{
           
            Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                VStack{
                    Image("newlogo").resizable().padding(.top, -35).frame(width:40, height: 10)
                }
                .padding(.top, -10.0)
                
                VStack{
                    VStack{
                        WebImage(url: URL(string: tip.image)) .frame(width: 150.0, height: 150.0)
                        //                        Text(tip.PType)
                        ScrollView{
                            VStack{
                                Text("'May you always take nothing but photographs in the bush, and leave nothing but footprints'").italic().font(.title2).multilineTextAlignment(.center).padding(.top, 16.0)
                                Text("Drive Mode").font(.caption).multilineTextAlignment(.leading).padding(.top, 10.0)
                                Text(tip.DM).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                VStack{
                                    Text("Exposure Mode").font(.caption).padding(.top, 10.0)
                                    Text(tip.EM).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }
                                VStack{
                                    Text("Focus Mode").font(.caption).padding(.top, 10.0)
                                    Text(tip.FM).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }.padding(.horizontal, 10.0)
                                VStack{
                                    Text("Shutter Speed").font(.caption).padding(.top, 10.0)
                                    Text(tip.SS).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }.padding(.horizontal, 10.0)
                                VStack{
                                    Text("Aperture").font(.caption).padding(.top, 10.0)
                                    Text(tip.Aperture).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }.padding(.horizontal, 10.0)
                                VStack{
                                    Text("ISO").font(.caption).padding(.top, 10.0)
                                    Text(tip.ISO).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }.padding(.horizontal, 10.0)
                                VStack{
                                    Text("White Balance").font(.caption).padding(.top, 10.0)
                                    Text(tip.WB).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }.padding(.horizontal, 10.0)
                                VStack{
                                    Text("Aperture").font(.caption).padding(.top, 10.0)
                                    Text(tip.TIP).padding().background(Color("DivColor")).foregroundColor(Color("IconColor")).font(.headline) .clipShape(RoundedRectangle(cornerRadius: 25))
                                }.padding(.horizontal, 10.0)
                                
                                
                            }
                        }
                    }
                    
                    Spacer()
                   
                }
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
    }

