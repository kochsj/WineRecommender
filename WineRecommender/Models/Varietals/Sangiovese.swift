//
//  Sangiovese.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Sangiovese: Varietal {
    init() {
        super.init(
            name: "Sangiovese", type: "wr.type.redwine".localized, grape: "wr.sangiovese.grape".localized, notableRegions: "wr.sangiovese.region".localized, tannins: "wr.sangiovese.tannin".localized, coolClimateCharacteristics: "wr.sangiovese.cool".localized, moderateClimateCharacteristics: "wr.sangiovese.moderate".localized, hotClimateCharacteristics: "wr.sangiovese.hot".localized,  shortDescription: "wr.sangiovese.description".localized, imageResource: "sangiovese"
        )
    }
}
