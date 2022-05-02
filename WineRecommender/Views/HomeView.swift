//
//  HomeView.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/5/22.
//

import SwiftUI


struct HomeView: View {
    @State private var showLanguagePopUp: Bool = false
    @State private var showExplainationPopUp: Bool = false
    @EnvironmentObject var user: User
    

//    var body: some View {
//            ZStack {
//                Color("background").edgesIgnoringSafeArea(.all)
//                VStack(alignment: .center) {
//                    Spacer()
//                    Text("wr.title.app".localized)
//                        .font(.title)
//                    Spacer()
//                    NavigationLink(destination: UserLanding()) {
//                        HomePageLogo()
//                    }
//                    Spacer()
//                    NavigationLink(destination: UserLanding()) {
//                        VStack {
//                            Text("wr.button.getstarted".localized)
//                        }.secondaryButtonStyle()
//                    }
//                    TextCarousel()
//                        .onTapGesture {
//                            showLanguagePopUp.toggle()
//                        }
//                    Spacer()
//                }.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
//                LanguageSelectionPopup(title: "wr.title.language".localized, messages: ["english", "español", "русский","français", "deutsch"], buttonText: "OK", show: $showLanguagePopUp, explainationShow: $showExplainationPopUp)
//            }
//            .hiddenNavigationBarStyle()
//            .navigationBarBackButtonHidden(true)
//    }
    var spacing: CGFloat = 75
    
    var body: some View {
        VScrollView {
            ZStack {
                Color("background").edgesIgnoringSafeArea(.all)
                    VStack(alignment: .center) {
                        Spacer(minLength: 25)
                        Text("wr.title.app".localized)
                            .font(.title)
                            .fontWeight(.heavy)
                        Spacer(minLength: 25)
                        NavigationLink(destination: UserLanding()) {
                            HomePageLogo()
                        }
                        Spacer(minLength: 25)
                        VStack {
                            NavigationLink(destination: UserLanding()) {
                                VStack {
                                    Text("wr.button.getstarted".localized)
                                }.secondaryButtonStyle()
                            }
                            TextCarousel()
                                .onTapGesture {
                                    showLanguagePopUp.toggle()
                                }
                        }
                        Spacer(minLength: 25)
                    }.padding([.horizontal], 15)
                LanguageSelectionPopup(title: "wr.title.language".localized, messages: ["english", "español", "русский","français", "deutsch"], buttonText: "OK", show: $showLanguagePopUp, explainationShow: $showExplainationPopUp)
            }
        }
            
        .hiddenNavigationBarStyle()
        .navigationBarBackButtonHidden(true)
    }
    
    
// WineRecommender[47234:13451683] changing items while animating can result in a corrupted navigation bar
        // Seems to relate to when you transition from a view with a Nav Bar to a view with navBarHidden
    
//Error: UIViewAlertForUnsatisfiableConstraints
        // setting navigationBarTitle("Your String") causes this error on this view
//        [LayoutConstraints] Unable to simultaneously satisfy constraints.
//            Probably at least one of the constraints in the following list is one you don't want.
//            Try this:
//                (1) look at each constraint and try to figure out which you don't expect;
//                (2) find the code that added the unwanted constraint or constraints and fix it.
//        Make a symbolic breakpoint at UIViewAlertForUnsatisfiableConstraints to catch this in the debugger.
//        .navigationViewStyle(StackNavigationViewStyle())
        // adds a warning when navigating away from the page: [Snapshotting] Snapshotting a view (0x7ff61591e030, _UIButtonBarStackView) that has not been rendered at least once requires afterScreenUpdates:YES.
}

