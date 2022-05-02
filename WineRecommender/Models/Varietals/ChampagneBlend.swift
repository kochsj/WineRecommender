//
//  ChampangeBlend.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class ChampagneBlend: Varietal {
    init() {
        super.init(
            name: "Champagne Blend", type: "wr.type.whitewine".localized, grape: "wr.champangeblend.grape".localized, notableRegions: "wr.champangeblend.region".localized, tannins: "wr.champangeblend.tannin".localized, coolClimateCharacteristics: "wr.champangeblend.cool".localized, moderateClimateCharacteristics: "wr.champangeblend.moderate".localized, hotClimateCharacteristics: "wr.champangeblend.hot".localized,  shortDescription: "wr.champangeblend.description".localized, imageResource: "champagne"
        )
    }
}
