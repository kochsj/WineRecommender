//
//  Grenache.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Grenache: Varietal {
    init() {
        super.init(
            name: "Grenache", type: "wr.type.redwine".localized, grape: "wr.grenache.grape".localized, notableRegions: "wr.grenache.region".localized, tannins: "wr.grenache.tannin".localized, coolClimateCharacteristics: "wr.grenache.cool".localized, moderateClimateCharacteristics: "wr.grenache.moderate".localized, hotClimateCharacteristics: "wr.grenache.hot".localized,  shortDescription: "wr.grenache.description".localized, imageResource: "grenache"
        )
    }
}
