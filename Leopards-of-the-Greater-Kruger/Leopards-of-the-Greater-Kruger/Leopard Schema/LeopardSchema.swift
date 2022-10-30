//
//  LeopardSchema.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/15.
//

import SwiftUI
import Firebase
import FirebaseDatabase
import FirebaseCoreExtension
struct LeopardSchema: Identifiable {
    var id : String
    var name : String
    var Img1 : String
    var Img2 : String
    var Img3 : String
    var age : String
    var descriptionLeopards : String
    var idKitTutorial : [String] = []
    var location : String
    var lodges : [String] = []
    
}
