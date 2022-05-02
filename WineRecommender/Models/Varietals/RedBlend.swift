//
//  RedBlend.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class RedBlend: Varietal {
    init() {
        super.init(
            name: "Red Blend", type: "wr.type.redwine".localized, grape: "wr.redblend.grape".localized, notableRegions: "wr.redblend.region".localized, tannins: "wr.redblend.tannin".localized, coolClimateCharacteristics: "wr.redblend.cool".localized, moderateClimateCharacteristics: "wr.redblend.moderate".localized, hotClimateCharacteristics: "wr.redblend.hot".localized, shortDescription: "wr.redblend.description".localized, imageResource: "redblend"
        )
    }
}
