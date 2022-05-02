//
//  CabernetFranc.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class CabernetFranc: Varietal {
    init() {
        super.init(
            name: "Cabernet Franc", type: "wr.type.redwine".localized, grape: "wr.cabernetfranc.grape".localized, notableRegions: "wr.cabernetfranc.region".localized, tannins: "wr.cabernetfranc.tannin".localized, coolClimateCharacteristics: "wr.cabernetfranc.cool".localized, moderateClimateCharacteristics: "wr.cabernetfranc.moderate".localized, hotClimateCharacteristics: "wr.cabernetfranc.hot".localized,  shortDescription: "wr.cabernetfranc.description".localized, imageResource: "cabernetfranc"
        )
    }
}
