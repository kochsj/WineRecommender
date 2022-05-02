//
//  WRToolbar.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/4/22.
//

import Foundation
import SwiftUI

struct WRToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItemGroup(placement: .bottomBar) {
            NavigationLink(destination: HomeView()) {
                Image(systemName: "house.fill")
                    .foregroundColor(Color("text"))
            }
            Spacer()
            NavigationLink(destination: QuestionStartView()) {
                Image(systemName: "questionmark.circle")
                    .foregroundColor(Color("text"))
            }
            Spacer()
            NavigationLink(destination: SavedRecommendationAllView()) {
                Image(systemName: "folder.fill.badge.person.crop")
                    .foregroundColor(Color("text"))
            }
            Spacer()
            NavigationLink(destination: SettingsView())  {
                Image(systemName: "rectangle.grid.1x2")
                    .foregroundColor(Color("text"))
            }
        }
    }
    
}
