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
    var system: DynamicTypeSize {
        switch self {
        case .small:
            return DynamicTypeSize.small
        case .medium:
            return DynamicTypeSize.large
        case .large:
            return DynamicTypeSize.xxxLarge
        case .xlarge:
            return DynamicTypeSize.accessibility3
        }
    }
}

enum Language: String, CaseIterable {
    case english, español, русский, français, deutsch
//    case english, spanish, german, russian, french
//    var id: Self { self }
}
extension Language {
    init?(lang: String) {
        switch lang {
        case "español":
            self = .español
        case "deutsch":
            self = .deutsch
        case "русский":
            self = .русский
        case "français":
            self = .français
        case "es":
            self = .español
        case "de":
            self = .deutsch
        case "ru":
            self = .русский
        case "fr":
            self = .français
        default:
            self = .english
        }
    }
}

enum WRColorScheme: String, CaseIterable, Identifiable {
    case system, wrLight, wrDark
    var id: Self { self }
    
    func toString() -> String {
        switch self {
        case .system:
            return "System"
        case .wrLight:
            return "Light"
        case .wrDark:
            return "Dark"
        }
    }
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


