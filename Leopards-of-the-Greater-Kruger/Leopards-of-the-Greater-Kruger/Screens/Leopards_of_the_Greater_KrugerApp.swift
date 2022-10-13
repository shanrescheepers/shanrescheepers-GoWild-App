//
//  Leopards_of_the_Greater_KrugerApp.swift
//  Leopards-of-the-Greater-Kruger
//
//  Created by Mac on 2022/10/10.
//

import SwiftUI
import FirebaseCore
import Firebase



class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()

    return true
  }
}

@main
struct Leopards_of_the_Greater_KrugerApp: App {
    static var isAlreadyLaunchedOnce = false
    init(){
        FirebaseApp.configure()
        
//        FIRApp.configure()
    }
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
//            NavigationView{
            ContentView()
           
//            }
        }
    }
}
