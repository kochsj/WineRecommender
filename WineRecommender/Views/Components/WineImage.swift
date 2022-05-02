//
//  WineImage.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import SwiftUI

struct WineImage: View {
    var url: String
    
    var body: some View {
        VStack {
            Image(url)
                .resizable()
                .scaledToFit()
                .border(Color.white)
                .shadow(radius: 7)
        }.frame(maxHeight: 420)
        
    }
}

