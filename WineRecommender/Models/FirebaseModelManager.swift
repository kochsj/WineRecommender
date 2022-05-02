//
//  FirebaseModelManager.swift
//  WineRecommender
//
//  Created by Stephen Koch on 4/5/22.
//
//
import Foundation
import Firebase
import FirebaseMLModelDownloader
import TensorFlowLite


class FirebaseModelManager: ObservableObject {
// Getting a ML recommendation
// 1. Get the model (getModel "downloads a custom model to device or gets a custom model already on the device)
// 2. Create Interpreter, allocate tensors, run interpteter
    let TAG: String = "FirebaseModelManager"
    let labels: [String] = ["Cabernet Sauvignon", "Sauvignon Blanc", "Pinot Noir", "Chardonnay", "Tempranillo", "Malbec", "Rosé", "Tempranillo Blend", "Syrah", "Sangiovese", "Sparkling Blend", "Red Blend", "Petite Sirah", "Riesling", "Nebbiolo", "Pinot Gris", "Viognier", "Pinot Grigio", "Cabernet Franc", "White Blend", "Gamay", "Zinfandel", "Barbera", "Grenache", "Carménère", "Gewürztraminer", "Merlot", "Grüner Veltliner", "Shiraz", "Champagne Blend", "Chenin Blanc", "Port", "Amarone", "Sangiovese Grosso"]
    let reds: [Int] = [0,2,4,5,7,8,9,11,12,14,18,20,21,22,23,24,26,27,28,31,32,33]
    let whites: [Int] = [1,3,10,13,15,16,17,19,25,29,30]
    var modelPath: String = ""
    var isRed: Bool? = nil

    func downloadModel() -> Void {
        let modelName: String = "WineAppModel"
        let modelType: ModelDownloadType = ModelDownloadType.localModelUpdateInBackground
        let conditions = ModelDownloadConditions(allowsCellularAccess: false)
        
        ModelDownloader.modelDownloader()
            .getModel(name: modelName,
                      downloadType: modelType,
                      conditions: conditions) { result in
                switch (result) {
                case .success(let customModel):
                    self.modelPath = customModel.path
                case .failure(let error):
                    print(error)
            }
        }
    }
    
    func toggleIsRed(isRed: Bool? = nil) -> Void {
        self.isRed = isRed
    }
    
   
    func predictionFromString(selections: [String]) -> Recommendation {
        var recommendation = Recommendation(wines: [""])
        
        // Create Interpreter. Catch failure to make interpreter.
        do {
            var outputData: UnsafeMutableBufferPointer<Float32> = UnsafeMutableBufferPointer<Float32>.allocate(capacity: 1)
            let options = Interpreter.Options()
            let interpreter = try Interpreter(modelPath: self.modelPath, options: options)

            try interpreter.allocateTensors()
            
            // Construct Input for intrepreter
            let vector = vectorizeString(description: selections)
            let inputBuffer = Data(bytes: vector, count: vector.count * MemoryLayout<Float>.stride)
            
            // Copy input
            do {
                try interpreter.copy(inputBuffer, toInputAt: 0)
            } catch let error {
                print("\(self.TAG).failure.copyInput - \(error)")
            }
            
            // Invoke interpreter
            do{
                try interpreter.invoke()
            } catch let error{
                print("\(self.TAG).failure.Invoke \(error)")
            }
            
            // Construct Output
            do{
                let output = try interpreter.output(at: 0)
                outputData = constructOutputContainer(output: output)
            } catch let error{
                print("\(self.TAG).failure.constructOutput \(error)")
            }
            
            //Construct Recommendation
            let wines = transformPredictions(arr: outputData)
            recommendation = Recommendation(wines: wines, selections: selections)
            
        } catch let error {
            print("\(self.TAG).failure.createIntrepreter - \(error)")
        }
//        print("\(TAG).finalRecommendation: \(recommendation)")
        return recommendation
    }
   
    func constructOutputContainer(output: Tensor) -> UnsafeMutableBufferPointer<Float32> {
        let outputSize = output.shape.dimensions.reduce(1, {x, y in x * y})
        let outputData = UnsafeMutableBufferPointer<Float32>.allocate(capacity: outputSize)
        _ = output.data.copyBytes(to: outputData)
        return outputData
    }
    
    func transformPredictions(arr: UnsafeMutableBufferPointer<Float32>) -> [String] {
        var topThreeIndices: [Int] = [-1,-1,-1]

        for i in 0..<3 {
            topThreeIndices[i] = maximum(floatArr: arr, exclusions: topThreeIndices)
        }
        
        var result: [String] = ["","",""]
        for (j, index) in topThreeIndices.enumerated() {
            result[j] = self.labels[index]
        }
        return result
    }
    
    func maximum(floatArr: UnsafeMutableBufferPointer<Float32>, exclusions: [Int]) -> Int {
        var maxIndex: Int = 0
        var maxValue: Float = -1

        for (index, float) in floatArr.enumerated() {
            var excluded: Bool = false

            // check if index of float is excluded from being a potential maxValue
            for exclusion in exclusions {
                if (exclusion == index) {
                    excluded = true;
                    break;
                }
            }
            
            if (self.isRed != nil){
                if (self.isRed!) {
                    for red in self.reds {
                        if (red == index) {
                            excluded = true
                            break
                        }
                    }
                } else {
                    for white in self.whites {
                        if (white == index) {
                            excluded = true
                            break
                        }
                    }
                }
            }

            if(!excluded) {
                if (float > maxValue) {
                    maxValue = float;
                    maxIndex = index;
                }
            }
        }
        return maxIndex;
    }
    
    func vectorizeString(description: [String]) -> [Float] {
        let len = 38517
        var vector = [Float](repeating: Float(0), count: len)
        let jsonFile = getJSONFile()
        
        if let dictionary = jsonFile as? [String: Int] {
            
            for word in description {
                let index = dictionary[word]
                // access individual value in dictionary
                if (index != nil) {
                    print("found word in dictionary: \(word) index: \(index!)")
                    vector[index!] = 1
                }
            }

        } else {
            print("\(TAG).vectorizeString.dictionaryFailCasting - jsonFile: \(jsonFile)")
        }
        return vector
    }
    
    func getJSONFile () -> Any {
        if let file = Bundle.main.url(forResource: "VectorizationDictionary", withExtension: "json") {
            do {
                let data = try Data(contentsOf: file)
                return try JSONSerialization.jsonObject(with: data, options: [])
            } catch let error {
                print(error)
            }
        }
        return false
    }
}
