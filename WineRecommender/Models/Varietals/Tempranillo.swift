//
//  Tempranillo.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Tempranillo: Varietal {
    init() {
        super.init(
            name: "Tempranillo", type: "wr.type.redwine".localized, grape: "wr.tempranillo.grape".localized, notableRegions: "wr.tempranillo.region".localized, tannins: "wr.tempranillo.tannin".localized, coolClimateCharacteristics: "wr.tempranillo.cool".localized, moderateClimateCharacteristics: "wr.tempranillo.moderate".localized, hotClimateCharacteristics: "wr.tempranillo.hot".localized,  shortDescription: "wr.tempranillo.description".localized, imageResource: "tempranillo"
        )
    }
}
