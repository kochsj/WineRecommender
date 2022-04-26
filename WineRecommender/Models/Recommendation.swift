//
//  Recommendation.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/5/22.
//

import Foundation
import SwiftUI

struct Recommendation: Identifiable, Codable, Hashable {
    let id: UUID
    var date: Date
    var wines: [String]
    var selections: [String]
    var starred: Bool = false
    
    init(id: UUID = UUID(), date: Date = Date.now, wines: [String], selections: [String] = []) {
        self.id = id
        self.date = date
        self.wines = wines
        self.selections = selections
    }
    
    func getDate() -> Date {
        return self.date
    }

    func getWines() -> [String] {
        return self.wines
    }

    func getSelections() -> [String] {
        return self.selections
    }
    
    mutating func toggleStarred() {
        self.starred.toggle()
        print("toggle starred: \(self.starred)")
    }

    mutating func setSelections(stringArray: [String]) {
        self.selections = stringArray
    }
    
}

extension Recommendation {
    struct Data {
        var date: Date = Date.now
        var wines: [String] = []
        var selections: [String] = []
        var starred: Bool = false
    }
    
    var data: Data {
        Data(date: date, wines: wines, selections: selections, starred: starred)
    }
    
//    mutating func update(from data: Data) {
//        date = data.date
//        wines = data.wines
//    }
    
    init(data: Data) {
        id = UUID()
        date = data.date
        wines = data.wines
        selections = data.selections
        starred = data.starred
    }
    
    static let sampleData: [Recommendation] = [
        Recommendation(date: Date.now, wines: ["Cabernet Sauvignon", "Merlot", "Malbec"], selections: ["Bold", "caramel", "red meat"]),
        Recommendation(date: Date.now, wines: ["Cabernet Franc", "Pinot Gris", "Chardonnay"], selections: ["Crisp", "fresh", "white meat"]),
        Recommendation(date: Date.now, wines: ["Amarone", "Barbera", "Gamay"], selections: ["First few wines"])
    ]
    

}

//class Recommendation: ObservableObject {
//    private var date: Date
//    private var wines: [Varietal]
//    private var selections: [String] = []
//
//    init(date: Date, wines: [Varietal]) {
//        self.date = date
//        self.wines = wines
//    }
//
//    func getDate() -> Date {
//        return self.date
//    }
//
//    func getWines() -> [Varietal] {
//        return self.wines
//    }
//
//    func getSelections() -> [String] {
//        return self.selections
//    }
//
//    func setSelections(stringArray: [String]) {
//        self.selections = stringArray
//    }
//}
