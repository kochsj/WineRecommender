//
//  StringExtension.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/2/22.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: " ")
    }
    
    func characterAtIndex(index: Int) -> Character? {
        var i = 0
        for char in self {
            if i == index {
                return char
            }
            i += 1
        }
        return nil
    }
    
}
