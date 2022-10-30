//
//  IDkitView.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/13.
//

import SwiftUI
import MapKit
//THIS IS THE MAP/Habitat Map SCREEN!!

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}


    
struct IDkitView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -25.3550785797, longitude: 31.8894281089), span: MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5))

    let locations = [
        Location(name: "Timbavati Private Nature Reserve", coordinate: CLLocationCoordinate2D(latitude: -24.4073, longitude: 31.3144)),
        Location(name: "The Klaserie Private Nature Reserve", coordinate: CLLocationCoordinate2D(latitude: -24.2564, longitude: 31.2168)),
        Location(name: "Sabie Sand Private Nature Reserve", coordinate: CLLocationCoordinate2D(latitude: -24.9654, longitude: 31.4399)),
        Location(name: "andBeyond Ngala Private Game Reserve", coordinate: CLLocationCoordinate2D(latitude: -24.3860, longitude: 31.3327)),
        Location(name: "Khaya Ndlovu Private Manor House", coordinate: CLLocationCoordinate2D(latitude: -24.369999999333334, longitude: 30.97055555488889)),
    ]
    
    var body: some View  {
        ZStack{
            Color("BackgroundColor")  .ignoresSafeArea()
            VStack{
                Image("newlogo").resizable().padding(.top, -50.0).frame(width:62, height: 15)
                Spacer()
                VStack{
                    VStack{
                        Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                            MapMarker(coordinate: location.coordinate)
                          
                        }
                        HStack{
                            Button("Zoom In") {
                                mapRegion.span.latitudeDelta *= 0.9
                                mapRegion.span.longitudeDelta *= 0.9
                            }.foregroundColor(Color(.black)).padding()
                            Button("Zoom Out") {
                                mapRegion.span.latitudeDelta += 0.9
                                mapRegion.span.longitudeDelta += 0.9
                            }.foregroundColor(Color(.black))
                        }
                    }.padding(.vertical, 4.0)
                }
            }
        }
    }
   
}


struct IDkitView_Previews: PreviewProvider {
    static var previews: some View {
        IDkitView()
    }
}
