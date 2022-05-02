//
//  Amarone.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Amarone: Varietal {
    init() {
        super.init(
            name: "Amarone", type: "wr.type.redwine".localized, grape: "wr.amarone.grape".localized, notableRegions: "wr.amarone.region".localized, tannins: "wr.amarone.tannin".localized, coolClimateCharacteristics: "wr.amarone.cool".localized, moderateClimateCharacteristics: "wr.amarone.moderate".localized, hotClimateCharacteristics: "wr.amarone.hot".localized, shortDescription: "wr.amarone.description".localized, imageResource: "amarone"
        )
    }
}
