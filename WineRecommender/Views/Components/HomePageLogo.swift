//
//  CircleImage.swift
//  WineRecommender
//
//  Created by Stephen Koch on 1/15/22.
//

import SwiftUI

struct HomePageLogo: View {
    var body: some View {
        VStack {
            Image("logo_transparent")
                .resizable(resizingMode: .stretch)
                .scaledToFit()
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.gray, lineWidth: 4)
                }
        }.frame(maxHeight: 350)
    }
}

struct HomePageLogo_Previews: PreviewProvider {
    static var previews: some View {
        HomePageLogo()
    }
}
