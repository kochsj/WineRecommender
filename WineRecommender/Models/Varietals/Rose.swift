//
//  Rose.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Rose: Varietal {
    init() {
        super.init(
            name: "Rosé", type: "wr.type.blend".localized, grape: "wr.rose.grape".localized, notableRegions: "wr.rose.region".localized, tannins: "wr.rose.tannin".localized, coolClimateCharacteristics: "wr.rose.cool".localized, moderateClimateCharacteristics: "wr.rose.moderate".localized, hotClimateCharacteristics: "wr.rose.hot".localized,  shortDescription: "wr.rose.description".localized, imageResource: "rose"
        )
    }
}
