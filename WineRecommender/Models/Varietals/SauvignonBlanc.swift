//
//  SauvignonBlanc.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class SauvignonBlanc: Varietal {
    init() {
        super.init(
            name: "Sauvignon Blanc", type: "wr.type.whitewine".localized, grape: "wr.sauvignonblanc.grape".localized, notableRegions: "wr.sauvignonblanc.region".localized, tannins: "wr.sauvignonblanc.tannin".localized, coolClimateCharacteristics: "wr.sauvignonblanc.cool".localized, moderateClimateCharacteristics: "wr.sauvignonblanc.moderate".localized, hotClimateCharacteristics: "wr.sauvignonblanc.hot".localized,  shortDescription: "wr.sauvignonblanc.description".localized, imageResource: "sauvignonblanc"
        )
    }
}
