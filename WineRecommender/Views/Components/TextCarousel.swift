//
//  TextCarousel.swift
//  WineRecommender
//
//  Created by Stephen Koch on 3/23/22.
//

import Foundation
import SwiftUI

func changeLanguageDisplayed(idx: Int) -> String {
    let languages = ["Change Language", "Cambiar Idioma", "Changer de Langue", "Изменить язык", "Sprache ändern"]
    return languages[idx]
}


struct TextCarousel: View {
    @State var text = ""
    @State var i = 0
    @State var opac = 1.0
    private var delay = 3.0
    
    var body: some View {
        VStack {
            Text(text)
                .opacity(opac)
        }.secondaryButtonStyle()
        .onChange(of: self.opac) { newValue in
            DispatchQueue.main.asyncAfter(deadline: .now() + (delay/20)) {
                if (self.opac > 0.2) {
                    self.opac -= 0.04
                }
            }
        }
        .onChange(of: self.i) { newValue in
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                if (self.i < 5) {
                    self.text = changeLanguageDisplayed(idx: self.i)
                    self.opac = 1.0
                    if (self.i<4){
                        self.i += 1
                    } else {
                        self.i = 0
                    }
                }
            }
        }
        .onAppear {
            self.text = "Change Language"
            self.i = 1
            self.opac -= 0.1
        }.onDisappear {
            self.i = 5
        }
    }
}
