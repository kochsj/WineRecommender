//
//  Chardonnay.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Chardonnay: Varietal {
    init() {
        super.init(
            name: "Chardonnay", type: "wr.type.whitewine".localized, grape: "wr.chardonnay.grape".localized, notableRegions: "wr.chardonnay.region".localized, tannins: "wr.chardonnay.tannin".localized, coolClimateCharacteristics: "wr.chardonnay.cool".localized, moderateClimateCharacteristics: "wr.chardonnay.moderate".localized, hotClimateCharacteristics: "wr.chardonnay.hot".localized,  shortDescription: "wr.chardonnay.description".localized, imageResource: "chardonnay"
        )
    }
}
