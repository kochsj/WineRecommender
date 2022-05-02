//
//  Malbec.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Malbec: Varietal {
    init() {
        super.init(
            name: "Malbec", type: "wr.type.redwine".localized,grape: "wr.malbec.grape".localized, notableRegions: "wr.malbec.region".localized, tannins: "wr.malbec.tannin".localized, coolClimateCharacteristics: "wr.malbec.cool".localized, moderateClimateCharacteristics: "wr.malbec.moderate".localized, hotClimateCharacteristics: "wr.malbec.hot".localized,  shortDescription: "wr.malbec.description".localized, imageResource: "malbec"
        )
    }
}
