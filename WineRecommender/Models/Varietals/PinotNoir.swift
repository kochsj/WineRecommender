//
//  PinotNior.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class PinotNoir: Varietal {
    init() {
        super.init(
            name: "Pinot Noir", type: "wr.type.redwine".localized, grape: "wr.pinotnoir.grape".localized, notableRegions: "wr.pinotnoir.region".localized, tannins: "wr.pinotnoir.tannin".localized, coolClimateCharacteristics: "wr.pinotnoir.cool".localized, moderateClimateCharacteristics: "wr.pinotnoir.moderate".localized, hotClimateCharacteristics: "wr.pinotnoir.hot".localized,  shortDescription: "wr.pinotnoir.description".localized, imageResource: "pinotnoir"
        )
    }
}
