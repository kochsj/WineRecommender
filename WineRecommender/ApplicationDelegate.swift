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
    @Environment(\.colorScheme) var colorScheme
//    @AppStorage("nightMode") private var nightMode: Bool = false
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        AppDelegate.instance = self
        FirebaseConfiguration.shared.setLoggerLevel(.min)
        FirebaseApp.configure()
        
        // issue with using the UIAppearance API during app initialization (WineRecommenderApp) overriding AccentColor in Assets.

        // Sets list background appearance without overriding AccentColor
        UITableView.appearance().backgroundColor = UIColor.clear
        UITableView.appearance().separatorColor = UIColor(named: "text")
        
//        if colorScheme == .dark {
//            nightMode = true
//        } else {
//            nightMode = false
//        }
        
        return true
    }
}

