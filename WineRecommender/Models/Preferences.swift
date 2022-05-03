//
//  Preferences.swift
//  WineRecommender
//
//  Created by Stephen Koch on 5/2/22.
//

import Foundation
import SwiftUI

enum TextSize: String, CaseIterable, Identifiable {
    case small, medium, large, xlarge
    var id: Self { self }
}

enum Language: String, CaseIterable, Identifiable {
    case english, spanish, german, russian, french
    var id: Self { self }
}

enum ColorScheme: String, CaseIterable, Identifiable {
    case standard, cool, warm
    var id: Self { self }
}

struct Preferences: Codable, Hashable {
    
    // Accessability
    var nightMode: Bool
    var textSize: Int
    var language: [String]
    var colorScheme: Int
    
    // Saved Recommendations
    var moreOptions: Bool
    var skipLoadingScreen: Bool
    var textEntryOption: Bool

    init(nightMode: Bool = false, textSize: Int = 0, language: [String] = ["en"], colorScheme: Int = 0, moreOptions: Bool = false, skipLoadingScreen: Bool = false, textEntryOption: Bool = false) {
        self.nightMode = nightMode
        self.textSize = textSize
        self.language = language
        self.colorScheme = colorScheme
        
        // Saved Recommendations
        self.moreOptions = moreOptions
        self.skipLoadingScreen = skipLoadingScreen
        self.textEntryOption = textEntryOption
    }

}

extension Preferences {
    struct PrefData {
        // Accessability
        var nightMode: Bool = false
        var textSize: Int = 0
        var language: [String] = ["en"]
        var colorScheme: Int = 0
        
        // Saved Recommendations
        var moreOptions: Bool = false
        var skipLoadingScreen: Bool = false
        var textEntryOption: Bool = false

    }
    
    var data: PrefData {
        PrefData(nightMode: nightMode, textSize: textSize, language: language, colorScheme: colorScheme, moreOptions: moreOptions, skipLoadingScreen: skipLoadingScreen, textEntryOption: textEntryOption)
    }
    
//    mutating func update(from data: Data) {
//        date = data.date
//        wines = data.wines
//    }
    
    init(data: PrefData) {
        nightMode = data.nightMode
        textSize = data.textSize
        language = data.language
        colorScheme = data.colorScheme
        moreOptions = data.moreOptions
        skipLoadingScreen = data.skipLoadingScreen
        textEntryOption = data.textEntryOption
    }
    

}


