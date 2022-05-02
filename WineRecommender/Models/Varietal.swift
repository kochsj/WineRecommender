//
//  Varietal.swift
//  WineRecommender
//
//  Created by Stephen Koch on 2/9/22.
//

import Foundation

class Varietal: ObservableObject, Identifiable {
    private var name: String
    private var grape: String
    private var notableRegions: String
    private var tannins: String
    private var coolClimateCharacteristics: String
    private var moderateClimateCharacteristics: String
    private var hotClimateCharacteristics: String
    private var shortDescription: String
    private var imageResource: String
    private var type: String
    
    init(name n: String,
         type ty: String,
        grape g: String,
        notableRegions nr: String,
        tannins t: String,
        coolClimateCharacteristics c: String,
        moderateClimateCharacteristics m: String,
        hotClimateCharacteristics h: String,
        shortDescription s: String,
        imageResource i: String) {
        name = n
        grape = g
        notableRegions = nr
        tannins = t
        coolClimateCharacteristics = c
        moderateClimateCharacteristics = m
        hotClimateCharacteristics = h
        shortDescription = s
        imageResource = i
        type = ty
    }

    func getName() -> String { return self.name }
    func getGrape() -> String { return self.grape }
    func getNotableRegions() -> String { return self.notableRegions }
    func getTannins() -> String { return self.tannins }
    func getCoolClimateCharacteristics() -> String { return self.coolClimateCharacteristics }
    func getModerateClimateCharacteristics() -> String { return self.moderateClimateCharacteristics }
    func getHotClimateCharacteristics() -> String { return self.hotClimateCharacteristics }
    func getShortDescription() -> String { return self.shortDescription }
    func getImageResource() -> String { return self.imageResource }
    func getType() -> String { return self.type }

    static func parseVarietal(name: String) -> Varietal? {
        switch name.lowercased() {
        case "amarone":
            return Amarone()
        case "barbera":
            return Barbera()
        case "cabernet franc":
            return CabernetFranc()
        case "cabernet sauvignon":
            return CabernetSauvignon()
        case "carménère":
            return Carmenere()
        case "champagne blend":
            return ChampagneBlend()
        case "chardonnay":
            return Chardonnay()
        case "chennin blanc":
            return CheninBlanc()
        case "gamay":
            return Gamay()
        case "gewürztraminer":
            return Gewurztraminer()
        case "grüner veltliner":
            return GrunerVeltliner()
        case "grenache":
            return Grenache()
        case "malbec":
            return Malbec()
        case "merlot":
            return Merlot()
        case "nebbiolo":
            return Nebbiolo()
        case "petite sirah":
            return PetiteSirah()
        case "pinot gris":
            return PinotGris()
        case "pinot noir":
            return PinotNoir()
        case "port":
            return Port()
        case "red blend":
            return RedBlend()
        case "riesling":
            return Riesling()
        case "rosé":
            return Rose()
        case "sangiovese":
            return Sangiovese()
        case "sauvignon blanc":
            return SauvignonBlanc()
        case "sparkling blend":
            return SparklingBlend()
        case "syrah":
            return Syrah()
        case "tempranillo":
            return Tempranillo()
        case "viognier":
            return Viognier()
        case "white blend":
            return WhiteBlend()
        case "zinfandel":
            return Zinfandel()
        default:
            return nil
        }
    }
}


