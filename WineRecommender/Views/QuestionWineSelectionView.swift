//
//  RecommenderGrape.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/4/22.
//

import Foundation
import SwiftUI

struct QuestionWineSelectionView: View {
    
    @EnvironmentObject var user: User
    @EnvironmentObject var modelManager: FirebaseModelManager
    @State private var isSelected = false
    @State private var grape = ""
    
    // Container UI values
    private let grapeContainerMargin: EdgeInsets = EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10)
    private let grapeContainerPadding: EdgeInsets = EdgeInsets(top: 25, leading: 10, bottom: 25, trailing: 10)
    private let grapeContainerCornerRadius: CGFloat = 15
    private let grapeContainerOpacity: CGFloat = 0.5
    private let grapeContainerChildSpacing: CGFloat = 10
    private let grapeContainerMaxWidth: CGFloat = 600
    
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(alignment: .center) {
                    Divider()
                    VStack(alignment: .center) {
                        NavigationLink(destination: QuestionInstructionsView(grape: grape), isActive: $isSelected) { EmptyView() }
                        Text("wr.view.question.limitrecommendation".localized).padding()
                    }
//                    .multilineTextAlignment(.center)
//                    .contentContainerStyle(height: [40,80,200])
                    .contentContainerStyle(edgeInsets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    VStack {
                        ZStack {
                            Color("background.container").opacity(grapeContainerOpacity).cornerRadius(grapeContainerCornerRadius)
                            VStack(alignment: .leading, spacing: grapeContainerChildSpacing) {
                                HStack {
                                    Text("wr.type.redwine".localized)
                                        .font(.title)
                                    Spacer(minLength: 50)
                                    if user.getFood() == "wr.food.red".localized {
                                        HStack {
                                            Text("wr.view.question.redmeat".localized).wineSelectionBubbleStyle()
                                                .overlay(RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color("border"), lineWidth: 2)
                                                )
                                        }.textContainerColorStyle(color: Color("background.selectionBubble"))
                                    }
                                }
                                Divider()
                                HStack(alignment: .top, spacing: grapeContainerChildSpacing) {
                                    Image("generic_redwine")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 160)
                                    Divider()
                                    VStack(alignment: .leading) {
                                        Text("• Warm, tannic, complex")
                                        Text("")
                                        Text("Pairing:")
                                        Text("• Dark Meats")
                                        Text("\t - beef, duck, sausage")
                                        Text("• Savory pasta dishes")
                                        Text("• Cheeses")
                                        Text("• Chocolate, deserts")
                                    }
                                }
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        self.grape = "wr.type.red".localized
                                        modelManager.toggleIsRed(isRed: true)
                                        self.isSelected = true
                                    }, label: {
                                        Text("wr.button.select".localized)
                                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                    }).grapeSelectionButton()
                                    
//                                    Button("wr.button.select".localized) {
//                                        self.grape = "wr.type.red".localized
//                                        modelManager.toggleIsRed(isRed: true)
//                                        self.isSelected = true
//                                    }.grapeSelectionButton()
                                }
                            }
                            .padding(grapeContainerPadding)
                            .cornerRadius(grapeContainerCornerRadius)
                        }
//                        HStack {
//                            Text("wr.type.redwine".localized)
//                                .font(.title)
//                            Spacer(minLength: 50)
//                            if user.getFood() == "wr.food.red".localized {
//                                HStack {
//                                    Text("wr.view.question.redmeat".localized).wineSelectionBubbleStyle()
//                                }.textContainerColorStyle(color: Color("background.container"))
//                            }
//                        }
//                        Divider()
//                        HStack(alignment: .top, spacing: 10) {
//                            Image("generic_redwine")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 80, height: 160)
//                            Divider()
//                            VStack(alignment: .leading) {
//                                Text("• Warm, tannic, complex")
//                                Text("")
//                                Text("Pairing:")
//                                Text("• Dark Meats")
//                                Text("\t - beef, duck, sausage")
//                                Text("• Savory pasta dishes")
//                                Text("• Cheeses")
//                                Text("• Chocolate, deserts")
//                            }
//                        }
//                        HStack {
//                            Spacer()
//                            Button("wr.button.select".localized) {
//                                self.grape = "wr.type.red".localized
//                                modelManager.toggleIsRed(isRed: true)
//                                self.isSelected = true
//                            }.grapeSelectionButton()
//                        }
                    }
                    .frame(maxWidth: grapeContainerMaxWidth)
                    .padding(grapeContainerMargin)
//                    .padding(EdgeInsets(top: 25, leading: 10, bottom: 25, trailing: 10))
//                    .border(Color("border"), width: 2)
                    VStack {
                        ZStack {
                            Color("background.container").opacity(grapeContainerOpacity).cornerRadius(grapeContainerCornerRadius)
                            VStack(alignment: .leading, spacing: grapeContainerChildSpacing)  {
                                HStack {
                                    Text("wr.type.whitewine".localized)
                                        .font(.title)
                                    Spacer(minLength: 30)
                                    if user.getFood() == "wr.food.white".localized {
                                        HStack {
                                            Text("wr.view.question.whitemeat".localized).wineSelectionBubbleStyle()
                                                .overlay(RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color("border"), lineWidth: 2)
                                                )
                                        }.textContainerColorStyle(color: Color("background.selectionBubble"))
                                    }
                                    if user.getFood() == "wr.food.seafood".localized {
                                        HStack {
                                            Text("wr.view.question.seafood".localized).wineSelectionBubbleStyle()
                                                .overlay(RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color("border"), lineWidth: 2)
                                                )
                                        }.textContainerColorStyle(color: Color("background.selectionBubble"))
                                    }
                                }
                                Divider()
                                HStack(alignment: .top, spacing: grapeContainerChildSpacing) {
                                    Image("generic_whitewine")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 160)
                                    Divider()
                                    VStack(alignment: .leading) {
                                        Text("• Fresh, crisp, refreshing")
                                        Text("")
                                        Text("Pairing:")
                                        Text("• Seafoods")
                                        Text("\t- scallops, halibut, cod, oysters")
                                        Text("• Light-intensity meats")
                                        Text("\t- Chicken, pork")
                                        Text("• Light pasta dishes")
                                        Text("• Fruits, puff pastry")
                                    }
                                }
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        self.grape = "wr.type.red".localized
                                        modelManager.toggleIsRed(isRed: true)
                                        self.isSelected = true
                                    }, label: {
                                        Text("wr.button.select".localized)
                                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                    }).grapeSelectionButton()
//                                    Button("wr.button.select".localized) {
//                                        self.grape = "wr.type.white".localized
//                                        modelManager.toggleIsRed(isRed: false)
//                                        self.isSelected = true
//                                    }.grapeSelectionButton()
                                }
                            }
                            .padding(grapeContainerPadding)
                            .cornerRadius(grapeContainerCornerRadius)
                        }
//                        HStack {
//                            Text("wr.type.whitewine".localized)
//                                .font(.title)
//                            Spacer(minLength: 30)
//                            if user.getFood() == "wr.food.white".localized {
//                                HStack {
//                                    Text("wr.view.question.whitemeat".localized).wineSelectionBubbleStyle()
//                                }.textContainerColorStyle(color: Color("background.container"))
//                            }
//                            if user.getFood() == "wr.food.seafood".localized {
//                                HStack {
//                                    Text("wr.view.question.seafood".localized).wineSelectionBubbleStyle()
//                                }.textContainerColorStyle(color: Color("background.container"))
//                            }
//                        }
//                        Divider()
//                        HStack(alignment: .top, spacing: 10) {
//                            Image("generic_whitewine")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 80, height: 160)
//                            Divider()
//                            VStack(alignment: .leading) {
//                                Text("• Fresh, crisp, refreshing")
//                                Text("")
//                                Text("Pairing:")
//                                Text("• Seafoods")
//                                Text("\t- scallops, halibut, cod, oysters")
//                                Text("• Light-intensity meats")
//                                Text("\t- Chicken, pork")
//                                Text("• Light pasta dishes")
//                                Text("• Fruits, puff pastry")
//                            }
//                        }
//                        HStack {
//                            Spacer()
//                            Button("wr.button.select".localized) {
//                                self.grape = "wr.type.white".localized
//                                modelManager.toggleIsRed(isRed: false)
//                                self.isSelected = true
//                            }.grapeSelectionButton()
//                        }
                    }
                    .frame(maxWidth: grapeContainerMaxWidth)
                    .padding(grapeContainerMargin)
//                    .border(Color("border"), width: 2)
                    VStack {
                        ZStack {
                            Color("background.container").opacity(grapeContainerOpacity).cornerRadius(grapeContainerCornerRadius)
                            VStack(alignment: .leading, spacing: grapeContainerChildSpacing)  {
                                HStack {
                                    Text("\("wr.type.red".localized) & \("wr.type.white".localized)")
                                        .font(.title)
                                    Spacer(minLength: 30)
                                    if user.getFood() == "wr.food.other".localized {
                                        HStack {
                                            Text("wr.view.question.other".localized).wineSelectionBubbleStyle()
                                                .overlay(RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color("border"), lineWidth: 2)
                                                )
                                        }.textContainerColorStyle(color: Color("background.selectionBubble"))
                                    }
                                }
                                Divider()
                                HStack {
                                    Text("I would like selections from red and white wines.")
                                }
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        self.grape = "wr.type.red".localized
                                        modelManager.toggleIsRed(isRed: true)
                                        self.isSelected = true
                                    }, label: {
                                        Text("wr.button.select".localized)
                                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                    }).grapeSelectionButton()
//                                    Button("wr.button.select".localized) {
//                                        self.grape = "either"
//                                        modelManager.toggleIsRed()
//                                        self.isSelected = true
//                                    }.grapeSelectionButton()
                                }
                            }
                            .padding(grapeContainerPadding)
                            .cornerRadius(grapeContainerCornerRadius)
                        }
//                        HStack {
//                            Text("\("wr.type.red".localized) & \("wr.type.white".localized)")
//                                .font(.title)
//                            Spacer(minLength: 30)
//                            if user.getFood() == "wr.food.other".localized {
//                                HStack {
//                                    Text("wr.view.question.other".localized).wineSelectionBubbleStyle()
//                                }.textContainerColorStyle(color: Color("background.container"))
//                            }
//                        }
//                        Divider()
//                        HStack {
//                            Text("I would like selections from red and white wines.")
//                        }
//                        HStack {
//                            Spacer()
//                            Button("wr.button.select".localized) {
//                                self.grape = "either"
//                                modelManager.toggleIsRed()
//                                self.isSelected = true
//                            }.grapeSelectionButton()
//                        }
                    }
                    .frame(maxWidth: grapeContainerMaxWidth)
                    .padding(grapeContainerMargin)
//                    .border(Color("border"), width: 2)
                }
            }
        }
        .navigationTitle("wr.title.selectyourgrape".localized)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            WRToolbar()
        }
    }
}
//struct RecommenderGrape_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestionWineSelectionView(needsHelp: false)
//.previewInterfaceOrientation(.portrait)
//    }
//}
