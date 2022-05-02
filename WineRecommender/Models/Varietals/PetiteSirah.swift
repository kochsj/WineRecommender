//
//  PetiteSirah.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class PetiteSirah: Varietal {
    init() {
        super.init(
            name: "Petite Sirah", type: "wr.type.redwine".localized, grape: "wr.petitesirah.grape".localized, notableRegions: "wr.petitesirah.region".localized, tannins: "wr.petitesirah.tannin".localized, coolClimateCharacteristics: "wr.petitesirah.cool".localized, moderateClimateCharacteristics: "wr.petitesirah.moderate".localized, hotClimateCharacteristics: "wr.petitesirah.hot".localized,  shortDescription: "wr.petitesirah.description".localized, imageResource: "petitesirah"
        )
    }
}
