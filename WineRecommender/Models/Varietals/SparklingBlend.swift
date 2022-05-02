//
//  SparklingBlend.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class SparklingBlend: Varietal {
    init() {
        super.init(
            name: "Sparkling Blend", type: "wr.type.whitewine".localized, grape: "wr.sparklingblend.grape".localized, notableRegions: "wr.sparklingblend.region".localized, tannins: "wr.sparklingblend.tannin".localized, coolClimateCharacteristics: "wr.sparklingblend.cool".localized, moderateClimateCharacteristics: "wr.sparklingblend.moderate".localized, hotClimateCharacteristics: "wr.sparklingblend.hot".localized, shortDescription: "wr.sparklingblend.description".localized, imageResource: "sparklingblend"
        )
    }
}
