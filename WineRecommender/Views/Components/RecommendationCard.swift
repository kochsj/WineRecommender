//
//  RecommendationCard.swift
//  WineRecommender
//
//  Created by Stephen Koch on 3/29/22.
//

import SwiftUI

struct RecommendationCard: View {
    var wine: Varietal
    
    var body: some View {
        NavigationLink(destination: WineDetailView(wine: wine)) {
            VStack(alignment: .leading) {
                Text(wine.getName())
                    .font(.title2)
                    .fontWeight(.heavy)
                    .padding([.top], 10)
                Text(wine.getShortDescription().localized)
                    .padding(EdgeInsets(top: 5, leading: 10, bottom: 10, trailing: 5))
            }
        }.listRowBackground(Color("background.button.unselected"))
    }
}

struct RecommendationCard_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationCard(wine: Amarone())
    }
}
