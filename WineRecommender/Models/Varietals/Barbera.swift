//
//  Barbera.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Barbera: Varietal {
    init() {
        super.init(
            name: "Barbera", type: "wr.type.redwine".localized, grape: "wr.barbera.grape".localized, notableRegions: "wr.barbera.region".localized, tannins: "wr.barbera.tannin".localized, coolClimateCharacteristics: "wr.barbera.cool".localized, moderateClimateCharacteristics: "wr.barbera.moderate".localized, hotClimateCharacteristics: "wr.barbera.hot".localized,  shortDescription: "wr.barbera.description".localized, imageResource: "barbera"
        )
    }
}
