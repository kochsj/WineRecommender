//
//  Gewurztraminer.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Gewurztraminer: Varietal {
    init() {
        super.init(
            name: "Gewürztraminer", type: "wr.type.whitewine".localized, grape: "wr.gewurztraminer.grape".localized, notableRegions: "wr.gewurztraminer.region".localized, tannins: "wr.gewurztraminer.tannin".localized, coolClimateCharacteristics: "wr.gewurztraminer.cool".localized, moderateClimateCharacteristics: "wr.gewurztraminer.moderate".localized, hotClimateCharacteristics: "wr.gewurztraminer.hot".localized,  shortDescription: "wr.gewurztraminer.description".localized, imageResource: "gewurztraminer"
        )
    }
}
