//
//  Port.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Port: Varietal {
    init() {
        super.init(
            name: "Port", type: "wr.type.redwine".localized, grape: "wr.port.grape".localized, notableRegions: "wr.port.region".localized, tannins: "wr.port.tannin".localized, coolClimateCharacteristics: "wr.port.cool".localized, moderateClimateCharacteristics: "wr.port.moderate".localized, hotClimateCharacteristics: "wr.port.hot".localized,  shortDescription: "wr.port.description".localized, imageResource: "port"
        )
    }
}
