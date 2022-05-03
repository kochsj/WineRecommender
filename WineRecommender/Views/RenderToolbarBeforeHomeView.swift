//
//  RenderToolbar.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/13/22.
//

import SwiftUI

// Simple way to render the toolbar content early in the nav stack. Also, there is an issue with using the UIAppearance API during app initialization (AppDelegate/App) overriding AccentColor in Assets.
// Avoids:
// [Snapshotting] Snapshotting a view (0x103642cb0, _UIButtonBarStackView) that has not been rendered at least once requires afterScreenUpdates:YES
// Avoids:
// standard blue accent color

struct RenderToolbarBeforeHomeView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        VStack {
            NavigationLink(destination: HomeView(), isActive: $isActive) {
                EmptyView()
            }
        }.toolbar {
            WRToolbar()
        }
        .onAppear {
            self.isActive = true
            
            // Sets list background appearance without overriding AccentColor
            UITableView.appearance().backgroundColor = UIColor.clear
            UITableView.appearance().separatorColor = UIColor(named: "text")
        }
    }
}
