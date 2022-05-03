//
//  UserStore.swift
//  WineRecommender
//
//  Created by Stephen Koch on 3/29/22.
// https://developer.apple.com/tutorials/app-dev-training/persisting-data
//

import Foundation
import SwiftUI

class PersistentStorageManager {
    // Manager that handles Create, Read, Update, Delete operations for a user's recommendations, persistent between application uses
    
    static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                   in: .userDomainMask,
                                   appropriateFor: nil,
                                   create: false)
//        .appendingPathComponent("recommendations.data")
        .appendingPathComponent("wineRecommender.data")
    }

    static func create(recommendations: [Recommendation], completion: @escaping (Result<Int, Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let data = try JSONEncoder().encode(recommendations)
                let outfile = try fileURL()
                try data.write(to: outfile)
                DispatchQueue.main.async {
                    completion(.success(recommendations.count))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
    
    static func read(completion: @escaping (Result<[Recommendation], Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let fileURL = try fileURL()
                guard let file = try? FileHandle(forReadingFrom: fileURL) else {
                    DispatchQueue.main.async {
                        completion(.success([]))
                    }
                    return
                }
                // TODO: handle JSON read errors
                let recommendations = try JSONDecoder().decode([Recommendation].self, from: file.availableData)
                DispatchQueue.main.async {
                    completion(.success(recommendations))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
    

    static func update(updatedRecommendation: Recommendation, recommendations: [Recommendation], completion: @escaping (Result<Int,Error>)->Void) {
        // Update reads a copy of the recommendations, finds the one to update, updates values, overwrites the file with the new copy
        var newList: [Recommendation] = recommendations
        let index = recommendations.firstIndex(where: {$0.id == updatedRecommendation.id})
        if(index != nil) {
            newList[index!] = updatedRecommendation
            DispatchQueue.global(qos: .background).async {
                create(recommendations: newList) { result in
                    switch result {
                    case .failure(let error):
                        completion(.failure(error))
//                        fatalError(error.localizedDescription)
                    case .success(let recommendationsCount):
                        DispatchQueue.main.async {
                            completion(.success(recommendationsCount))
                        }
                    }
                }
            }
        }
        else {
            completion(.success(-1))
        }
    }
    
    static func delete(uuid: UUID, recommendations: [Recommendation], completion: @escaping (Result<[Recommendation], Error>)->Void) {
        // delete reads a copy of the recommendations, finds the one to delete, updates values, overwrites the file with the new copy
        var newList: [Recommendation] = recommendations
        let index = recommendations.firstIndex(where: {$0.id == uuid})
        if(index != nil) {
            newList.remove(at: index!)
            
            // if the list is empty - remove the file (prevent errors with JSON decode operation on read)
            if newList == [] {
                DispatchQueue.global(qos: .background).async {
                    deleteAll() { result in
                        switch result {
                        case .failure(let error):
                            fatalError(error.localizedDescription)
                        case .success(_):
                            DispatchQueue.main.async {
                                completion(.success([]))
                            }
                        }
                    }
                }
            } else {
                DispatchQueue.global(qos: .background).async {
                    create(recommendations: newList) { result in
                        switch result {
                        case .failure(let error):
                            fatalError(error.localizedDescription)
                        case .success(_):
                            DispatchQueue.main.async {
                                completion(.success(newList))
                            }
                        }
                    }
                }
            }
        }
        else {
            completion(.success([]))
        }
    }
    
    static func deleteAll(completion: @escaping (Result<Int, Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let fileURL = try fileURL()
                if(FileManager.default.fileExists(atPath: fileURL.path)) {
                    try FileManager.default.removeItem(at: fileURL)
                    DispatchQueue.main.async {
                        completion(.success(1))
                    }
                } else {
                    DispatchQueue.main.async {
                        completion(.success(0))
                    }
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
    
}
