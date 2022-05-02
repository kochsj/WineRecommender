//
//  GrunerVeltliner.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class GrunerVeltliner: Varietal {
    init() {
        super.init(
            name: "Grüner Veltliner", type: "wr.type.whitewine".localized, grape: "wr.grunerveltliner.grape".localized, notableRegions: "wr.grunerveltliner.region".localized, tannins: "wr.grunerveltliner.tannin".localized, coolClimateCharacteristics: "wr.grunerveltliner.cool".localized, moderateClimateCharacteristics: "wr.grunerveltliner.moderate".localized, hotClimateCharacteristics: "wr.grunerveltliner.hot".localized,  shortDescription: "wr.grunerveltliner.description".localized, imageResource: "grunerveltliner"
        )
    }
}
