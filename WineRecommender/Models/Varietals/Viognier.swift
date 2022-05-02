//
//  Viognier.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Viognier: Varietal {
    init() {
        super.init(
            name: "Viognier", type: "wr.type.whitewine".localized, grape: "wr.viognier.grape".localized, notableRegions: "wr.viognier.region".localized, tannins: "wr.viognier.tannin".localized, coolClimateCharacteristics: "wr.viognier.cool".localized, moderateClimateCharacteristics: "wr.viognier.moderate".localized, hotClimateCharacteristics: "wr.viognier.hot".localized,  shortDescription: "wr.viognier.description".localized, imageResource: "viognier"
        )
    }
}
