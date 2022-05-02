//
//  Nebbiolo.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Nebbiolo: Varietal {
    init() {
        super.init(
            name: "Nebbiolo", type: "wr.type.redwine".localized, grape: "wr.nebbiolo.grape".localized, notableRegions: "wr.nebbiolo.region".localized, tannins: "wr.nebbiolo.tannin".localized, coolClimateCharacteristics: "wr.nebbiolo.cool".localized, moderateClimateCharacteristics: "wr.nebbiolo.moderate".localized, hotClimateCharacteristics: "wr.nebbiolo.hot".localized,  shortDescription: "wr.nebbiolo.description".localized, imageResource: "nebbiolo"
        )
    }
}
