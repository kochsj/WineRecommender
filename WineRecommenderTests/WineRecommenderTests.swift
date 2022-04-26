//
//  WineRecommenderTests.swift
//  WineRecommenderTests
//
//  Created by Stephen Koch on 1/14/22.
//

import XCTest
@testable import WineRecommender

class WineRecommenderTests: XCTestCase {
    var amarone: Varietal!
    var barbera: Varietal!
    var cabernetFranc: Varietal!
    var cabernetSauvignon: Varietal!
    var carmenere: Varietal!
    var champangeBlend: Varietal!
    var chardonnay: Varietal!
    var cheninBlanc: Varietal!
    var gamay: Varietal!
    var gewurztraminer: Varietal!
    var grenache: Varietal!
    var grunerVeltliner: Varietal!
    var malbec: Varietal!
    var merlot: Varietal!
    var nebbiolo: Varietal!
    var petiteSirah: Varietal!
    var pinotGris: Varietal!
    var pinotNoir: Varietal!
    var port: Varietal!
    var redBlend: Varietal!
    var riesling: Varietal!
    var rose: Varietal!
    var sangiovese: Varietal!
    var sauvignonBlanc: Varietal!
    var sparklingBlend: Varietal!
    var syrah: Varietal!
    var tempranillo: Varietal!
    var viognier: Varietal!
    var whiteBlend: Varietal!
    var zinfandel: Varietal!
    var user: User!

    override func setUpWithError() throws {
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        amarone = Amarone()
        barbera = Barbera()
        cabernetFranc = CabernetFranc()
        cabernetSauvignon = CabernetSauvignon()
        carmenere = Carmenere()
        champangeBlend = ChampagneBlend()
        chardonnay = Chardonnay()
        cheninBlanc = CheninBlanc()
        gamay = Gamay()
        gewurztraminer = Gewurztraminer()
        grenache = Grenache()
        grunerVeltliner = GrunerVeltliner()
        malbec = Malbec()
        merlot = Merlot()
        nebbiolo = Nebbiolo()
        petiteSirah = PetiteSirah()
        pinotGris = PinotGris()
        pinotNoir = PinotNoir()
        port = Port()
        redBlend = RedBlend()
        riesling = Riesling()
        rose = Rose()
        sangiovese = Sangiovese()
        sauvignonBlanc = SauvignonBlanc()
        sparklingBlend = SparklingBlend()
        syrah = Syrah()
        tempranillo = Tempranillo()
        viognier = Viognier()
        whiteBlend = WhiteBlend()
        zinfandel = Zinfandel()
        
        user = User()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        let expectation = self.expectation(description: "teardown")
        
        amarone = nil
        barbera = nil
        cabernetFranc = nil
        carmenere = nil
        champangeBlend = nil
        chardonnay = nil
        cheninBlanc = nil
        gamay = nil
        gewurztraminer = nil
        grenache = nil
        grunerVeltliner = nil
        malbec = nil
        merlot = nil
        nebbiolo = nil
        petiteSirah = nil
        pinotGris = nil
        pinotNoir = nil
        port = nil
        redBlend = nil
        riesling = nil
        rose = nil
        sangiovese = nil
        sauvignonBlanc = nil
        sparklingBlend = nil
        syrah = nil
        tempranillo = nil
        viognier = nil
        whiteBlend = nil
        zinfandel = nil
        
        PersistentStorageManager.deleteAll() { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(_):
                expectation.fulfill()
            }
        }

        waitForExpectations(timeout: 5, handler: nil)
        

    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testRecommendationCreated() {
        let currentDate = Date()
        let wines = [cabernetSauvignon.getName(), merlot.getName(), malbec.getName()]
        
        var recommendation = Recommendation(
            date: currentDate,
            wines: wines)
        recommendation.setSelections(stringArray: ["bold", "tannin", "chocolate"])
        
        XCTAssertEqual(recommendation.getDate(), currentDate)
        XCTAssertEqual(recommendation.getWines(), ["Cabernet Sauvignon", "Merlot", "Malbec"])
        XCTAssertEqual(recommendation.getSelections(), ["bold", "tannin", "chocolate"])
    }
    
    //include actual strings
    func testDetailRecommendationObjectExistsStringsFormattedCorrectly() {
        let varitals = [amarone, barbera, cabernetFranc, cabernetSauvignon, carmenere, champangeBlend, chardonnay, cheninBlanc, gamay, gewurztraminer, grenache, grunerVeltliner, malbec, merlot, nebbiolo, petiteSirah, pinotGris, pinotNoir, port, redBlend, riesling, rose, sangiovese, sauvignonBlanc, sparklingBlend, syrah, tempranillo, viognier, whiteBlend, zinfandel]
        let expectedName = ["Amarone", "Barbera", "Cabernet Franc", "Cabernet Sauvignon", "Carménère", "Champagne Blend", "Chardonnay", "Chenin Blanc", "Gamay", "Gewürztraminer", "Grenache", "Grüner Veltliner", "Malbec", "Merlot", "Nebbiolo", "Petite Sirah", "Pinot Gris", "Pinot Noir", "Port", "Red Blend", "Riesling", "Rosé", "Sangiovese", "Sauvignon Blanc", "Sparkling Blend", "Syrah", "Tempranillo", "Viognier", "White Blend", "Zinfandel"]
        let expectedType = ["Red Wine",
                            "Red Wine",
                            "Red Wine",
                            "Red Wine",
                            "Red Wine",
                            "White Wine",
                            "White Wine",
                            "White Wine",
                            "Red Wine",
                            "White Wine",
                            "Red Wine",
                            "White Wine",
                            "Red Wine",
                            "Red Wine",
                            "Red Wine",
                            "Red Wine",
                            "White Wine",
                            "Red Wine",
                            "Red Wine",
                            "Red Wine",
                            "White Wine",
                            "Either Red or White Wine",
                            "Red Wine",
                            "White Wine",
                            "White Wine",
                            "Red Wine",
                            "Red Wine",
                            "White Wine",
                            "White Wine",
                            "Red Wine"]
        let expectedGrape = ["Blend of three italian grapes: Corvina, Rondinella, Molinara",
                             "Italian red grape",
                             "Blue-black grape, parent to Merlot and Cabernet Sayvignon",
                             "Small, spherical, black, thick skin",
                             "Cabernet red wine grape",
                             "Blend of white wine grapes. Chardonnay, Pinot Noir, Pinot Meunier",
                             "Green-skinned, sturdy",
                             "White-gold grape",
                             "Small, round, purple grape",
                             "Rose colored grape",
                             "Dark purple grape",
                             "Deep-green grape",
                             "Purple grape with thin skin",
                             "Dark blue-colored grape",
                             "Large, purple grape, thick skin",
                             "Dark-skinned grape",
                             "Grayish-blue color (Gris)",
                             "Red-skinned grape",
                             "Blend of Portugese red grapes.",
                             "Blends of red wine grapes",
                             "Green-skinned",
                             "Many grape types, pink color",
                             "Small, spherical, dark purple skin",
                             "Green grape, thin skin",
                             "Blends of white wine grapes",
                             "Dark-skinned grape",
                             "Violet-blue grape",
                             "Green grape",
                             "Blends of white wine grapes", "Black-skinned wine grape"]
        for (i, variety) in varitals.enumerated() {
            XCTAssertEqual(variety!.getName(), expectedName[i])
            XCTAssertEqual(variety!.getGrape(), expectedGrape[i])
            XCTAssertEqual(variety!.getType(), expectedType[i])
        }
        
    }
    
    func testDetailRecommendationObjectExistsCorrectImageDisplayed() {
        let varitals = [amarone, barbera, cabernetFranc, cabernetSauvignon, carmenere, champangeBlend, chardonnay, cheninBlanc, gamay, gewurztraminer, grenache, grunerVeltliner, malbec, merlot, nebbiolo, petiteSirah, pinotGris, pinotNoir, port, redBlend, riesling, rose, sangiovese, sauvignonBlanc, sparklingBlend, syrah, tempranillo, viognier, whiteBlend, zinfandel]
        let expectedImage = ["amarone", "barbera", "cabernetfranc", "cabernetsauvignon", "carmenere", "champagne", "chardonnay", "cheninblanc", "gamay", "gewurztraminer", "grenache", "grunerveltliner", "malbec", "merlot", "nebbiolo", "petitesirah", "pinotgris", "pinotnoir", "port", "redblend", "riesling", "rose", "sangiovese", "sauvignonblanc", "sparklingblend", "syrah", "tempranillo", "viognier", "whiteblend", "zinfandel"]
        
        for (i, variety) in varitals.enumerated() {
            XCTAssertEqual(variety!.getImageResource(), expectedImage[i])
        }
        
    }
    
    func testWineRecommenderFoodSelection() {
        let user = User()
        let foods = [Food.reset, Food.red, Food.white, Food.seafood, Food.other]
        let foodStrings = ["", "Red Meat", "White Meat", "Seafood", "Other"]
        
        for i in 0...4 {
            user.setFood(food: foods[i])
            XCTAssertEqual(user.getFood(), foodStrings[i])
        }
    }
    

    func testRecommendationStoreCreated() {
        let expected: [Recommendation] = []
        
        XCTAssertEqual(user.recommendations, expected)
    }
    
    func testRecommendationStoreReadEmptyFile() {
        let expected: [Recommendation] = []
        var actual: [Recommendation]!
        let expectation = self.expectation(description: "loading")
        PersistentStorageManager.read() { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(let recommendationList):
                actual = recommendationList
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertEqual(actual, expected)
    }
    
    func testRecommendationStoreCreate() {
        let recommendations = Recommendation.sampleData
        let expected = recommendations.count
        let expectation = self.expectation(description: "saving")
        var actual = -1
        
        PersistentStorageManager.create(recommendations: recommendations) { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(let recommendationsCount):
                actual = recommendationsCount
                expectation.fulfill()
            }
            
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertEqual(actual, expected)
    }

    func testRecommendationStoreDeleteAll() {
        var filePath = ""
        let expectation = self.expectation(description: "delete all")
        
        do {
            filePath = try PersistentStorageManager.fileURL().path
        } catch(let error) {
            print(error)
        }
        
        PersistentStorageManager.deleteAll() { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(_):
                expectation.fulfill()
            }
        }

        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertEqual(FileManager.default.fileExists(atPath: filePath),false)
    }

    
    func testRecommendationStoreCreateThenLoadExistingFile() {
        let recommendations = Recommendation.sampleData
        let expected = 3
        let expectation = self.expectation(description: "loading2")
        var actual: Int!
        
        PersistentStorageManager.create(recommendations: recommendations) { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(_):
                PersistentStorageManager.read() { result in
                    switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let recommendationList):
                        actual = recommendationList.count
                        expectation.fulfill()
                    }
                }
            }
        }
        
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertEqual(actual, expected)
    }
    
    func testRecommendationStoreUpdate() {
        let updatedSelections: [String] = ["updated.Bold", "updated.caramel", "updated.red meat"]

        let recommendations: [Recommendation] = [
            Recommendation(date: Date.now, wines: ["Cabernet Sauvignon", "Merlot", "Malbec"], selections: ["Bold", "caramel", "red meat"]),
            Recommendation(date: Date.now, wines: ["Cabernet Franc", "Pinot Gris", "Chardonnay"], selections: ["Crisp", "fresh", "white meat"]),
            Recommendation(date: Date.now, wines: ["Amarone", "Barbera", "Gamay"], selections: ["First few wines"])
        ]
        
        // Create File
        let createExpectation = self.expectation(description: "updateTest.create")
        PersistentStorageManager.create(recommendations: recommendations) { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(_):
                createExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
        
        // Load File
        let loadExpectation = self.expectation(description: "updateTest.load")
        var loadedRecommendations: [Recommendation] = []
        PersistentStorageManager.read() { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(let recommendationList):
                loadedRecommendations = recommendationList
                loadExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
        
        // Ensure selections are correct
        XCTAssertEqual(loadedRecommendations[0].getSelections(), ["Bold", "caramel", "red meat"])
        
        // Update File
        var recommendationToUpdate = loadedRecommendations[0]
        recommendationToUpdate.setSelections(stringArray: updatedSelections)
        
        let updateExpectation = self.expectation(description: "updateTest.update")
        PersistentStorageManager.update(updatedRecommendation: recommendationToUpdate, recommendations: loadedRecommendations) { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(let code):
                print("Update Test Code: \(code)")
                updateExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
        
        // Load File again, verify update success
        let secondLoadExpectation = self.expectation(description: "second read")
        PersistentStorageManager.read() { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(let recommendationList):
                loadedRecommendations = recommendationList
                secondLoadExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
        
        XCTAssertEqual(loadedRecommendations[0].getSelections(), updatedSelections)
        
    }
    
    func testRecommendationStoreDelete() {
        // 1. Create File
        // 2. Read File
        // 3. Delete Recommendation
        // 4. Read File & Assert
        let firstRecommendation = Recommendation(date: Date.now, wines: ["Cabernet Sauvignon", "Merlot", "Malbec"], selections: ["Bold", "caramel", "red meat"])
        let secondRecommendation = Recommendation(date: Date.now, wines: ["Cabernet Franc", "Pinot Gris", "Chardonnay"], selections: ["Crisp", "fresh", "white meat"])
        let thirdRecommendation = Recommendation(date: Date.now, wines: ["Amarone", "Barbera", "Gamay"], selections: ["First few wines"])
        let recommendations: [Recommendation] = [
            firstRecommendation,
            secondRecommendation,
            thirdRecommendation
        ]
        
        // Create File
        let createExpectation = self.expectation(description: "deleteTest.create")
        PersistentStorageManager.create(recommendations: recommendations) { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(_):
                createExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
        
        // Read File
        let readExpectation = self.expectation(description: "deleteTest.read")
        var loadedRecommendations: [Recommendation] = []
        PersistentStorageManager.read() { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(let recommendationList):
                loadedRecommendations = recommendationList
                readExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
        
        // Ensure selections are correct
        XCTAssertEqual(loadedRecommendations[0].getSelections(), ["Bold", "caramel", "red meat"])
        
        // Delete Recommendation
        let recommendationToDeleteUUID = firstRecommendation.id
        let deleteExpectation = self.expectation(description: "deleteTest.delete")
        PersistentStorageManager.delete(uuid: recommendationToDeleteUUID, recommendations: loadedRecommendations) { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(let code):
                print("Delete Test Code: \(code)")
                deleteExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
        
        // Load File again, verify delete success
        let secondReadExpectation = self.expectation(description: "deleteTest.secondRead")
        PersistentStorageManager.read() { result in
            switch result {
            case .failure(let error):
                fatalError(error.localizedDescription)
            case .success(let recommendationList):
                loadedRecommendations = recommendationList
                secondReadExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
        
        XCTAssertEqual(loadedRecommendations, [secondRecommendation, thirdRecommendation])
        
    }

    // Performanace
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
