//
//  ChenninBlanc.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class CheninBlanc: Varietal {
    init() {
        super.init(
            name: "Chenin Blanc", type: "wr.type.whitewine".localized, grape: "wr.cheninblanc.grape".localized, notableRegions: "wr.cheninblanc.region".localized, tannins: "wr.cheninblanc.tannin".localized, coolClimateCharacteristics: "wr.cheninblanc.cool".localized, moderateClimateCharacteristics: "wr.cheninblanc.moderate".localized, hotClimateCharacteristics: "wr.cheninblanc.hot".localized,  shortDescription: "wr.cheninblanc.description".localized, imageResource: "cheninblanc"
        )
    }
}

