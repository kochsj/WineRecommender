//
//  Zinfandel.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Zinfandel: Varietal {
    init() {
        super.init(
            name: "Zinfandel", type: "wr.type.redwine".localized, grape: "wr.zinfandel.grape".localized, notableRegions: "wr.zinfandel.region".localized, tannins: "wr.zinfandel.tannin".localized, coolClimateCharacteristics: "wr.zinfandel.cool".localized, moderateClimateCharacteristics: "wr.zinfandel.moderate".localized, hotClimateCharacteristics: "wr.zinfandel.hot".localized,  shortDescription: "wr.zinfandel.description".localized, imageResource: "zinfandel"
        )
    }
}
