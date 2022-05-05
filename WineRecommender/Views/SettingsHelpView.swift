//
//  SettingsHelpView.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/26/22.
//

import SwiftUI

struct SettingsHelpView: View {
    
    private let first: String = "Contact winecorecommender@gmail.com at any time if you need assistance.";
    private let second: String = "If you are encountering errors, please feel free to send your error logs to us by clicking the button below.";
    
    @State var isShowing: Bool = false
    var bannerText: String = "Error log reported."
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    Text("User Guide".uppercased()).font(.headline).padding([.bottom], 20)
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Getting a wine recommendation is as simple as answering a few questions and selecting wine attributes that sound the most appealing to you. The wine recommender AI does the rest!")
                        Text("To get a wine recommended to you, you will want to go to the wine recommender interface. Click on the terminal icon in the toolbar or follow the prompts from the home page. The toolbar is visible on the bottom of most pages but not all.")
                        Text("Answer a few short questions and select some attributes and the AI will select three wines with flavor profiles that closely match your selections. These three wines will be grouped together and saved as a 'recommendation'.")
                        Text("Select the list button in the toolbar to view your saved recommendations. Favorite the recommendations that you want to recall later and delete the recommendations that you no longer need.")
                    }
                    .font(.callout)
                }
                .contentContainerStyle(edgeInsets: EdgeInsets(top: 40, leading: 25, bottom: 40, trailing: 25))
                VStack {
                    Text("Accessibility".uppercased()).font(.headline).padding([.bottom], 20)
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Text size, language, and themes can be altered in settings to fit your preferences - independent of your system settings.")
                    }
                    .font(.callout)
                }
                .contentContainerStyle(edgeInsets: EdgeInsets(top: 40, leading: 25, bottom: 40, trailing: 25))
                
                VStack {
                    VStack {
                        Text("Error Reporting".uppercased()).font(.headline).padding([.bottom], 20)
                        VStack(alignment: .leading, spacing: 20) {
                            Text(first)
                            Text(second)
                            HStack {
                                Button {
                                    isShowing = true
                                } label: {
                                    Text("Submit Logs")
                                }
                                .primaryButtonStyle()
                                .padding([.top], 20)
                            }.frame(maxWidth: .infinity, alignment: .center)
                        }
                        .font(.callout)
                    }
                }
                .contentContainerStyle(edgeInsets: EdgeInsets(top: 40, leading: 25, bottom: 40, trailing: 25))
                
            }.navigationTitle("Help")
            Banner(isShowing: $isShowing, bannerText: bannerText)
        }
        
    }
}

struct SettingsHelpView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsHelpView()
    }
}
