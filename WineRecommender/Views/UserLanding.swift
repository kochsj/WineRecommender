//
//  UserLanding.swift
//  WineRecommender
//
//  Created by Stephen Koch on 1/16/22.
//

import SwiftUI

// Here the user landing is designed to offer the user a choice
// 1. Sign into the app to access/save wine recommendations
// 2. Create an Account
// 3. Continue to the Wine Recommender

struct UserLanding: View {
    
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            VScrollView {
                VStack {
                    VStack(spacing: 25) {
                        Text("Welcome to Wine Recommender!")
                        Text("Please Sign In to Continue or Create an account.")
                        NavigationLink(destination: QuestionStartView()) {
                            Text("Continue")
                                .primaryButtonStyle()
                        }
                    }
                    .contentContainerStyle()
                    .multilineTextAlignment(.center)
                }
            }
        }
        .hiddenNavigationBarStyle()
        .toolbar {
            WRToolbar()
            
        }

    }
}


