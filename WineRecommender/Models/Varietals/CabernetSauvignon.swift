//
//  CabernetSauvignon.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class CabernetSauvignon: Varietal {
    init() {
        super.init(name: "Cabernet Sauvignon",type: "wr.type.redwine".localized,grape: "wr.cabernetsauvignon.grape".localized, notableRegions: "wr.cabernetsauvignon.region".localized, tannins: "wr.cabernetsauvignon.tannin".localized, coolClimateCharacteristics: "wr.cabernetsauvignon.cool".localized, moderateClimateCharacteristics: "wr.cabernetsauvignon.moderate".localized, hotClimateCharacteristics: "wr.cabernetsauvignon.hot".localized, shortDescription: "wr.cabernetsauvignon.description".localized,imageResource: "cabernetsauvignon")
    }
}
