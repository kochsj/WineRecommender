//
//  Riesling.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Riesling: Varietal {
    init() {
        super.init(
            name: "Riesling", type: "wr.type.whitewine".localized, grape: "wr.riesling.grape".localized, notableRegions: "wr.riesling.region".localized, tannins: "wr.riesling.tannin".localized, coolClimateCharacteristics: "wr.riesling.cool".localized, moderateClimateCharacteristics: "wr.riesling.moderate".localized, hotClimateCharacteristics: "wr.riesling.hot".localized,  shortDescription: "wr.riesling.description".localized, imageResource: "riesling"
        )
    }
}
