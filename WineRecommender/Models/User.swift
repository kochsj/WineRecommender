//
//  User.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/5/22.
//

import Foundation

class User: ObservableObject {
    @Published var recommendations: [Recommendation] = []
    @Published var modelFilePath: String?
    private var food = ""
    
    func setFood(food: Food) {
        switch food {
        case .red:
            self.food = "wr.food.red".localized
        case .white:
            self.food = "wr.food.white".localized
        case .seafood:
            self.food = "wr.food.seafood".localized
        case .other:
            self.food = "wr.food.other".localized
        case .reset:
            self.food = ""
        }
    }
    
    func setModelFilePath(path: String) -> Void {
        self.modelFilePath = path
    }
    
    func getFood() -> String {
        return self.food
    }
    
    func setRecommendations(list: [Recommendation] = []) -> Void {
        if list == [] {
            PersistentStorageManager.read { result in
                switch result {
                case .failure(let error):
                    fatalError(error.localizedDescription)
                case .success(let recommendations):
                    self.recommendations = recommendations
                }
            }
        } else {
            self.recommendations = list
        }
        
    }
    
    func addRecommendation(recommendation: Recommendation) -> Void {
        self.recommendations.append(recommendation)
        PersistentStorageManager.create(recommendations: self.recommendations) {result in print("new count: \(result)")}
    }
    
}

enum Food {
    case red
    case white
    case seafood
    case other
    case reset
}
