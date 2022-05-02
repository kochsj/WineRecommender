//
//  RecommenderInstructions.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/4/22.
//

import Foundation
import SwiftUI

struct QuestionInstructionsView: View {
    var grape: String
    
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            VScrollView {
                VStack {
                    Divider()
                    Spacer()
                    VStack(spacing: 30) {
                        Text("We have created a list of common terms and flavors used to describe wine.")
                        Text("To find the best wine for you, please select the flavors or profiles that sound the most appealing to you!")
                        Text("Select as few or as many as you want!").bold().underline()
    //                    Text("Click below to find the perfect \(grape) wine for you!")
                        NavigationLink(destination: QuestionFlavorProfileView()) {
                            Text("Start")
                                .frame(width: 200, height: 60, alignment: .center)
                                .background(Color("background.button.unselected"))
                                .foregroundColor(Color("text"))
                                .cornerRadius(20)
                        }
                    }
                    .contentContainerStyle(edgeInsets: EdgeInsets(top: 30, leading: 25, bottom: 30, trailing: 25))
                    Spacer()
                }
            }
        }
        .navigationTitle("Instructions")
    }
}

