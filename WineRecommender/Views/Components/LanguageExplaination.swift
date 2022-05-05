//
//  LanguageExplaination.swift
//  WineRecommender
//
//  Created by Stephen Koch on 5/3/22.
//

import SwiftUI

struct LanguageExplaination: View {
    var title: String
    var buttonText: String
    @Binding var explainationShow: Bool
    @Binding var explainationMessage: String
    
    var body: some View {
        
        ZStack {
            if explainationShow {
                Color("background").opacity(explainationShow ? 0.3 : 0).edgesIgnoringSafeArea(.all)

                // PopUp Window
                VStack {
                    VStack(alignment: .center, spacing: 0) {
                        Text(title)
                            .font(.title)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .frame(maxHeight: 54, alignment: .center)
                            .padding(10)
                            .foregroundColor(Color("text"))
                            .background(Color("background.button.next"))

                        VStack {
                            Text(explainationMessage)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .padding(EdgeInsets(top: 20, leading: 25, bottom: 20, trailing: 25))
                                .foregroundColor(Color("text"))
                        }.frame(minHeight:200)
                        Button(action: {
                            // Dismiss the PopUp
                            withAnimation(.linear(duration: 0.3)) {
                                explainationShow = false
                            }
                        }, label: {
                            Text(buttonText)
                                .font(.title)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(maxHeight: 54, alignment: .center)
                                .padding(10)
                                .foregroundColor(Color("text"))
                                .background(Color("background.button.next"))
        //                            .font(Font.system(size: 23, weight: .semibold))
                        }).buttonStyle(PlainButtonStyle())
                    }
                    .frame(maxWidth: 600)
                    .border(Color.white, width: 2)
                    .background(Color("background.container"))
                }.padding([.horizontal], 20)
            }
            
        }
        
    }
}


