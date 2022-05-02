//
//  Syrah.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Syrah: Varietal {
    init() {
        super.init(
            name: "Syrah", type: "wr.type.redwine".localized, grape: "wr.syrah.grape".localized, notableRegions: "wr.syrah.region".localized, tannins: "wr.syrah.tannin".localized, coolClimateCharacteristics: "wr.syrah.cool".localized, moderateClimateCharacteristics: "wr.syrah.moderate".localized, hotClimateCharacteristics: "wr.syrah.hot".localized,  shortDescription: "wr.syrah.description".localized, imageResource: "syrah"
        )
    }
}
