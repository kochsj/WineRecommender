//
//  PinotGris.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class PinotGris: Varietal {
    init() {
        super.init(
            name: "Pinot Gris", type: "wr.type.whitewine".localized, grape: "wr.pinotgris.grape".localized, notableRegions: "wr.pinotgris.region".localized, tannins: "wr.pinotgris.tannin".localized, coolClimateCharacteristics: "wr.pinotgris.cool".localized, moderateClimateCharacteristics: "wr.pinotgris.moderate".localized, hotClimateCharacteristics: "wr.pinotgris.hot".localized,  shortDescription: "wr.pinotgris.description".localized, imageResource: "pinotgris"
        )
    }
}
