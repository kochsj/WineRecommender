//
//  WineRecommenderApp.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/5/22.
//

import SwiftUI

@main
struct WineRecommenderApp: App {
    @UIApplicationDelegateAdaptor(ApplicationDelegate.self) var appDelegate
    var user = User()
    @StateObject var modelManager = FirebaseModelManager()
    
    
    init(){
        // Set app style for nav bar
        UINavigationBar.appearance().backgroundColor = UIColor(named: "background")
        UINavigationBar.appearance().shadowImage = UIImage()
//        ThemeTitle.navigationBarColors(background: .purple, titleColor: .white)
        user.setRecommendations()
        // remove background of List Views
        UITableView.appearance().backgroundColor = UIColor.clear
        UITableView.appearance().separatorColor = UIColor(named: "text")
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
                RenderToolbarBeforeHomeView()
            }
            .navigationViewStyle(.stack)
            .environmentObject(modelManager)
            .environmentObject(user)
            
        }
    }
}
