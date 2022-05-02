//
//  RecommenderStart.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/4/22.
//

import Foundation
import SwiftUI

struct QuestionStartView: View {
    @EnvironmentObject var user: User
    @State var showCode: Int = 0
    @State var isSelected: Bool = false

    @State var opac: Double = 1.0
    private var delay: Double = 0.3
    private let edgeInsets: EdgeInsets = EdgeInsets(top: 60, leading: 25, bottom: 60, trailing: 25)
    
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            VScrollView {
                switch showCode{
                case 1:
                    VStack {
                        Divider()
                        Spacer()
                        VStack(spacing: 45) {
                            Text("Will you be enjoying your wine with a meal?")
                            HStack {
//                                Spacer(minLength: 15)
                                Button(action: {
                                    opac = 0.0
                                    DispatchQueue.main.asyncAfter(deadline: .now() + (delay)) {
                                        opac = 1.0
                                        showCode = 2
                                    }
                                }) {
                                    Text("wr.button.yes".localized)
                                        .yesNoButtonStyle()
                                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 15))
                                }
//                                Spacer(minLength: 15)
                                NavigationLink(destination: QuestionWineSelectionView()) {
                                    Text("No")
                                        .yesNoButtonStyle()
                                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 30))
                                }
//                                Spacer(minLength: 15)
                            }
                            
                        }.contentContainerStyle(edgeInsets: self.edgeInsets)
                        .opacity(opac)
                        .animation(Animation.easeInOut(duration: delay), value: opac)
                        Spacer()
                    }
                    
                case 2:
                    VStack {
                        NavigationLink(destination: QuestionWineSelectionView(), isActive: $isSelected) {EmptyView()}
                        Divider()
                        Spacer()
                        VStack {
                            Button(action: {
                                self.user.setFood(food: .red)
                                opac = 0.0
                                DispatchQueue.main.asyncAfter(deadline: .now() + (delay)) {
                                    self.isSelected = true
                                }
                            }) {
                                Text("wr.food.red".localized)
                                    .primaryButtonStyle()
                            }
                            Button(action: {
                                self.user.setFood(food: .white)
                                self.isSelected = true
                            }) {
                                Text("wr.food.white".localized)
                                    .primaryButtonStyle()
                            }
                            Button(action: {
                                self.user.setFood(food: .seafood)
                                self.isSelected = true
                            }) {
                                Text("wr.food.seafood".localized)
                                    .primaryButtonStyle()
                            }
                            Button(action: {
                                self.user.setFood(food: .other)
                                self.isSelected = true
                            }) {
                                Text("wr.food.other".localized)
                                    .primaryButtonStyle()
                            }
                        }.contentContainerStyle(edgeInsets: self.edgeInsets)
                        .opacity(opac)
                        .animation(Animation.easeInOut(duration: delay), value: opac)
                        Spacer()
                    }
                default:
                    VStack {
                        Divider()
                        Spacer()
                        VStack(spacing: 45) {
                            Text("wr.view.question.whitered".localized)
                            HStack {
//                                Spacer(minLength: 15)
                                Button(action: {
                                    opac = 0.0
                                    DispatchQueue.main.asyncAfter(deadline: .now() + (delay)) {
                                        opac = 1.0
                                        showCode = 1
                                    }
                                }) {
                                    Text("wr.button.yes".localized)
                                        .yesNoButtonStyle()
                                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 15))
                                }
//                                Spacer(minLength: 15)
                                NavigationLink(destination: QuestionWineSelectionView()) {
                                    Text("wr.button.no".localized)
                                        .yesNoButtonStyle()
                                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 30))
                                }
//                                Spacer(minLength: 15)
                            }
                            
                        }
                        .contentContainerStyle(edgeInsets: self.edgeInsets)
                        .opacity(opac)
                        .animation(Animation.easeInOut(duration: delay), value: opac)
                        Spacer()
                    }

                }
            }
            
            
        }
        .navigationTitle("wr.title.app".localized)
        .toolbar {
            WRToolbar()
        }
        .onAppear {
            user.setFood(food: .reset)
        }
    }
}
