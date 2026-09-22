//
//  APIConfig.swift
//  Cinenime
//
//  Created by Ery Prasetyo on 21/09/26.
//

import Foundation

struct APIConfig: Decodable{
    let tmdbBaseUrl: String
    let tmdbAPIKey: String
    
    //Singleton Desain Pattern - Start
    
    static let shared : APIConfig? = {
        do{
            return try loadConfig()
        }catch {
            print("Failed to Load API Config : \(error.localizedDescription)")
            return nil
        }
    }()
    
    private static func loadConfig() throws -> APIConfig{
        guard let url = Bundle.main.url(forResource: "APIConfig", withExtension: "json") else{
            throw APIConfigError.fileNotFound
        }
        
        do{
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(APIConfig.self, from: data)
        } catch let error as DecodingError{
            throw APIConfigError.decodingFailed(underlyingError: error)
        } catch{
            throw APIConfigError.dataLoadingFailed(underlyingError: error)
        }
    }
    
    //Singleton Desain Pattern - END
}
