//
//  ApplicationDelegate.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/5/22.
//

import Foundation
import SwiftUI
import Firebase

class ApplicationDelegate: NSObject, UIApplicationDelegate {
//    static private(set) var instance: AppDelegate! = nil
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        AppDelegate.instance = self
        FirebaseConfiguration.shared.setLoggerLevel(.min)
        FirebaseApp.configure()
        return true
    }
}
