//
//  Merlot.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Merlot: Varietal {
    init() {
        super.init(
            name: "Merlot", type: "wr.type.redwine".localized, grape: "wr.merlot.grape".localized, notableRegions: "wr.merlot.region".localized, tannins: "wr.merlot.tannin".localized, coolClimateCharacteristics: "wr.merlot.cool".localized, moderateClimateCharacteristics: "wr.merlot.moderate".localized, hotClimateCharacteristics: "wr.merlot.hot".localized,  shortDescription: "wr.merlot.description".localized, imageResource: "merlot"
        )
    }
}
