//
//  Gamay.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Gamay: Varietal {
    init() {
        super.init(
            name: "Gamay", type: "wr.type.redwine".localized, grape: "wr.gamay.grape".localized, notableRegions: "wr.gamay.region".localized, tannins: "wr.gamay.tannin".localized, coolClimateCharacteristics: "wr.gamay.cool".localized, moderateClimateCharacteristics: "wr.gamay.moderate".localized, hotClimateCharacteristics: "wr.gamay.hot".localized,  shortDescription: "wr.gamay.description".localized, imageResource: "gamay"
        )
    }
}
