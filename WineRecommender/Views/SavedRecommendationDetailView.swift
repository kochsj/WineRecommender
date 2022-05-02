//
//  RecommendationsDetailView.swift
//  WineRecommender
//
//  Created by Stephen Koch on 3/30/22.
//

import SwiftUI

// Shows the details of the chosen recommendation saved locally
// date created, wines recommended, selections made

struct SavedRecommendationDetailView: View {
    @EnvironmentObject var user: User
    @State var bannerText: String = ""
    @State var isShowing: Bool = false
    @State var isActive: Bool = false
    @State var isPopupShowing: Bool = false
    var recommendation: Recommendation
    @State var starred: Bool
    
    func handleBanner(isDeleted: Bool = false) -> Void {
        if isDeleted {
            isActive = true
        }
        isShowing.toggle()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            isShowing.toggle()
        }
        
    }
    func handleStar(index: Int) -> Void {
        user.recommendations[index].toggleStarred()
        self.starred.toggle()
    }
    
    var body: some View {
        VScrollView {
            ZStack {
                Color("background").edgesIgnoringSafeArea(.all)
                NavigationLink(destination: SavedRecommendationAllView(bannerText: "Recommendation deleted.", isShowing: true), isActive: $isActive) { EmptyView() }
                VStack {
                    List {
                        ForEach(recommendation.wines, id: \.self) { wine in
                            //TODO: replace Amarone()
                            RecommendationCard(wine: Varietal.parseVarietal(name: wine) ?? Amarone())
                        }
                    }
                    if isShowing {
                        Text(bannerText)
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            isPopupShowing = true
                        } label: {
                            Label("Delete", systemImage: "trash.fill")
                                .foregroundColor(Color("text"))
                        }
                        Spacer()
                        Button {
                            for (index, rec) in user.recommendations.enumerated() {
                                if rec.id == recommendation.id {
                                    handleStar(index: index)
    //                                user.recommendations[index].toggleStarred()
                                    PersistentStorageManager.update(updatedRecommendation: user.recommendations[index], recommendations: user.recommendations){ result in
                                        switch result {
                                        case .success(let count):
                                            if count >= 0 {
                                                bannerText = "Updated!"
                                            } else {
                                                bannerText = "Something went wrong.."
                                            }
                                        case .failure(let error):
                                            bannerText = "Something went wrong.."
                                            print("SavedRecommendationView.PersistentStorageManager.update - ERROR: \(error)")
                                        }
                                        handleBanner()
                                    }
                                }
                            }
                        } label: {
    //                        Label("Favorite", systemImage: recommendation.starred ? "star.fill" : "star")
                            Label("Favorite", systemImage: starred ? "star.fill" : "star")
                                .foregroundColor(Color("text"))
                        }
                        Spacer()
                    }.padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                }
                DeletePopupView(user: user, recommendation: recommendation, show: $isPopupShowing)
            }
        }
        .navigationTitle(Text(recommendation.date, format: .dateTime.day().month().year()))
        .toolbar {
            WRToolbar()
        }
    }
}

