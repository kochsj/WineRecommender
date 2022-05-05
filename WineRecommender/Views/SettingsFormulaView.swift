//
//  SettingsFormulaView.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/26/22.
//

import SwiftUI

struct SettingsFormulaView: View {
    
    private let first: String = "\tThank you for using the WineCo Wine Recommender and welcome! My name is Stephen and I created this application for the fictitious company WineCo. The wine recommender is a fully functional machine learning model that I created for my capstone project at Western Governor's University. The wine recommender I designed to input descriptive words and output a wine recommendation based on the wine closest aligned with your descriptive words.";
    private let second: String = "\tWine recommender is a neural network trained on over 150,000 wine reviews from Wine Enthusiast Magazine. Wine Enthusiast Magazine rates and describes the wines that they review. The wine recommender works by evaluating every word in your input and predicting how likely the description correlates to any one of the varietal categories. Every varietal is assigned a probability value, and the varietal with the highest probability is then recommended to you.";
    private let third: String = "\tCommon varietal characteristics used to describe the recommended wines were derived from a dataset of over 21,000 rated wines. For more information, please check out the Data Trends section of the app.";
    
//    "Below is a pie chart illustrating the distribution of the varietals in the dataset."

    
    var body: some View {
        ScrollView {
            VStack {
//                Text("Accessibility".uppercased()).font(.headline).padding([.bottom], 20)
                VStack(alignment: .leading, spacing: 20) {
                    Text(first)
                    Text(second)
                    Text(third)
                }
                .font(.callout)
            }
            .contentContainerStyle(edgeInsets: EdgeInsets(top: 40, leading: 25, bottom: 40, trailing: 25))
        }.navigationTitle("About")
    }
}

struct SettingsFormulaView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsFormulaView()
    }
}
