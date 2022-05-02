//
//  WhiteBlend.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class WhiteBlend: Varietal {
    init() {
        super.init(
            name: "White Blend", type: "wr.type.whitewine".localized, grape: "wr.whiteblend.grape".localized, notableRegions: "wr.whiteblend.region".localized, tannins: "wr.whiteblend.tannin".localized, coolClimateCharacteristics: "wr.whiteblend.cool".localized, moderateClimateCharacteristics: "wr.whiteblend.moderate".localized, hotClimateCharacteristics: "wr.whiteblend.hot".localized,  shortDescription: "wr.whiteblend.description".localized, imageResource: "whiteblend"
        )
    }
}
