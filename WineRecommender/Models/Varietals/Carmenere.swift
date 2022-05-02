//
//  Carmenere.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Carmenere: Varietal {
    init() {
        super.init(
            name: "Carménère", type: "wr.type.redwine".localized, grape: "wr.carmenere.grape".localized, notableRegions: "wr.carmenere.region".localized, tannins: "wr.carmenere.tannin".localized, coolClimateCharacteristics: "wr.carmenere.cool".localized, moderateClimateCharacteristics: "wr.carmenere.moderate".localized, hotClimateCharacteristics: "wr.carmenere.hot".localized,  shortDescription: "wr.carmenere.description".localized, imageResource: "carmenere"
        )
    }
}
