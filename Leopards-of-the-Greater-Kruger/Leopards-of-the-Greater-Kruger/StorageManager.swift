//
//  StorageManager.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/30.
//

import SwiftUI
import Firebase
import FirebaseStorage

//class StorageManager: ObservableObject {
//    let storage = Storage.storage()
//
//    func listItem(){
//        let storageRef = storage.reference().child("images")
//
//        let handler: (StorageListResult, Error?)-> Void = {(result, error) in
//            if let error = error{
//                print("error", error)
//
//            }
//
//            let item = result.items{
//                print("Item", item)
//            }
//
//            storageRef.list(maxResults:1, completion: handler)
//
//        }
//    }
//
//    func listAllFiles(){
//        let storageRef = storage.reference().child("images")
//        storageRef.listAll{(result, error) in
//            if let error = error{
//
//            }
//        }
//    }
//
//}

