//
//  Banner.swift
//  WineRecommender
//
//  Created by Stephen Koch on 5/4/22.
//

import SwiftUI

struct Banner: View {
    @Binding var isShowing: Bool
    var bannerText: String
    
    var body: some View {
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
}

//struct Banner_Previews: PreviewProvider {
//    static var previews: some View {
//        Banner()
//    }
//}
