//
//  DeletePopupView.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/15/22.
//

import SwiftUI

struct DeletePopupView: View {
    var user: User
    var recommendation: Recommendation?
    
    var isDeleteAllView: Bool = false
    
    @Binding var show: Bool
    
    @State var isDeleted: Bool = false
    @State var isNotDeleted: Bool = false


    var body: some View {
        ZStack {
            NavigationLink(destination: SavedRecommendationAllView(bannerText: "Recommendation deleted.", isShowing: true), isActive: $isDeleted) { EmptyView() }
            NavigationLink(destination: SavedRecommendationAllView(bannerText: "Failed to delete.", isShowing: true), isActive: $isNotDeleted) { EmptyView() }
            if show {
                // PopUp background color
//                Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                Color("background").opacity(show ? 0.8 : 0).edgesIgnoringSafeArea(.all)

                // PopUp Window
                VStack {
                    VStack(alignment: .center, spacing: 0) {
                        Text("WARNING")
                            .font(.title)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: 54, alignment: .center)
                            .padding(10)
                            .foregroundColor(Color("text"))
                            .background(Color("background.button.next"))
                        VStack(alignment: .center) {
                            Text(isDeleteAllView ? "This will remove ALL saved wine recommendations. Are you sure?" : "This will remove your saved recommendation. Are you sure?")
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("text"))
                                .padding(10)
                        }.frame(minHeight:200)
                        HStack(spacing: 0) {
                            Button(action: {
                                if isDeleteAllView {
                                    PersistentStorageManager.deleteAll() { result in
                                        switch result {
                                        case .success(_):
                                            withAnimation(.linear(duration: 0.3)) {
                                                user.setRecommendations(list: [])
                                                show = false
                                            }
                                        case .failure(let error):
                                            print("DeletePopupView.PersistentStorageManager.deleteAll - ERROR: \(error)")
                                        }
                                    }
                                } else {
                                    if recommendation != nil {
                                        PersistentStorageManager.delete(uuid: recommendation!.id, recommendations: user.recommendations) { result in
                                            switch result {
                                            case .success(let rec):
                                                user.setRecommendations(list: rec)
                                                isDeleted = true
                                            case .failure(let error):
                                                print("DeletePopupView.PersistentStorageManager.delete - ERROR: \(error)")
                                            }
                                        }
                                    } else {
                                        isNotDeleted = true
                                    }
                                }
                                
                            }, label: {
                                Text("YES")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity)
                                    .frame(maxHeight: 54, alignment: .center)
                                    .padding(10)
                                    .foregroundColor(Color("text"))
                                    .background(Color("background.button.next"))
                                    
                            }).buttonStyle(PlainButtonStyle())
                            Divider()
                            Button(action: {
                                // Dismiss the PopUp
                                withAnimation(.linear(duration: 0.3)) {
                                    show = false
                                }
                            }, label: {
                                Text("NO")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity)
                                    .frame(maxHeight: 54, alignment: .center)
                                    .padding(10)
                                    .foregroundColor(Color("text"))
                                    .background(Color("background.button.next"))
                            }).buttonStyle(PlainButtonStyle())
                        }
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: 72, alignment: .center)
                    }
                    .frame(maxWidth: 600)
                    .border(Color.white, width: 2)
                    .background(Color("background.container"))
                }.padding([.horizontal], 20)
            }
        }
    }
}

