//
//  RecommendationsView.swift
//  WineRecommender
//
//  Created by Stephen Koch on 3/29/22.
//

import SwiftUI

struct SavedRecommendationAllView: View {
    @EnvironmentObject var user: User
//    @Environment(\.scenePhase) private var scenePhase
//    @State private var isPresentingNewScrumView = false
    @State var isPopupShowing: Bool = false
    @State private var newScrumData = Recommendation.Data()
    @State var bannerText: String = ""
    @State var isShowing: Bool = false
    @State var recommendation: Recommendation? = nil
    
//    func handleBanner() -> Void {
//        isShowing = true
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            isShowing = false
//        }
//    }
    
    var body: some View {
        VScrollView {
            ZStack {
                Color("background").edgesIgnoringSafeArea(.all)
                if user.recommendations.count < 1 {
                    VStack {
                        Spacer()
                        Text("No saved recommendations.")
                        Spacer()
                        NavigationLink(destination: QuestionStartView()) {
                            Text("Get Started")
                                .primaryButtonStyle()
                        }.padding(EdgeInsets(top: 20, leading: 0, bottom: -10, trailing: 0))
                        Spacer()
                    }.contentContainerStyle()
                } else {
                    VStack {
                        List {
                            ForEach(Array(zip(user.recommendations.indices, user.recommendations)), id: \.0) { index, recommendation in
                                NavigationLink(destination: SavedRecommendationDetailView(recommendation: recommendation, starred: recommendation.starred)) {
                                    HStack {
                                        if recommendation.starred {
                                            Image(systemName: "star.fill")
                                        }
                                        Text(recommendation.wines[0])
                                        Spacer()
                                        Text(recommendation.date, format: .dateTime.month().day().year())
                                    }
                                    .frame(maxHeight: 80)
                                    .padding(5)
                                }
                                .swipeActions(edge: .leading) {
                                    Button {
                                        user.recommendations[index].toggleStarred()
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
        //                                    handleBanner()
                                            isShowing = true
                                        }
                                    } label: {
                                        Label("Favorite", systemImage: "star")
                                    }
                                    .tint(.indigo)
                                }
                                .swipeActions(edge: .trailing) {
                                    Button {
                                        isPopupShowing = true
                                        self.recommendation = recommendation
                                    } label: {
                                        Label("Delete", systemImage: "trash.fill")
                                    }
                                    .tint(.red)
                                }
                                .listRowBackground(Color("background.button.container"))
                            } // end ForEach {}
                        } // end List {}
                    } // end VStack {}
                    DeletePopupView(user: user, recommendation: self.recommendation, show: $isPopupShowing)
                    if isShowing {
                        Color("background").opacity(0.7).edgesIgnoringSafeArea(.all)
                        HStack {
                            Text(bannerText)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(height: 75, alignment: .center)
                                .foregroundColor(Color("text"))
                                .background(Color("background.button"))
                        }
                        .frame(maxWidth: 300)
                        .border(Color.white, width: 2)
                        .background(Color("background.container"))
                        .onAppear() {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                isShowing = false
                            }
                        }
                    }
                }
                
            } // ZStack {}
            .navigationTitle("wr.title.savedrecommendations".localized)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                WRToolbar()
            }
        }
        
//        .toolbar {
//            Button(action: {
//                isPresentingNewScrumView = true
//            }) {
//                Image(systemName: "plus")
//            }
//            .accessibilityLabel("New Scrum")
//        }
//        .sheet(isPresented: $isPresentingNewScrumView) {
//            NavigationView {
//                DetailEditView(data: $newScrumData)
//                    .toolbar {
//                        ToolbarItem(placement: .cancellationAction) {
//                            Button("Dismiss") {
//                                isPresentingNewScrumView = false
//                                newScrumData = DailyScrum.Data()
//                            }
//                        }
//                        ToolbarItem(placement: .confirmationAction) {
//                            Button("Add") {
//                                let newScrum = DailyScrum(data: newScrumData)
//                                scrums.append(newScrum)
//                                isPresentingNewScrumView = false
//                                newScrumData = DailyScrum.Data()
//                            }
//                        }
//                    }
//            }
//        }
//        .onChange(of: scenePhase) { phase in
//            if phase == .inactive { saveAction() }
//        }
    }
}

