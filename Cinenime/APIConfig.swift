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
    
    static let shared : APIConfig = {
        guard let url = Bundle.main.url(forResource: "APIConfig", withExtension: "json") else{
         fatalError("API CONFIG (JSON) is missing or invalid")
        }
        
        do{
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(APIConfig.self, from: data)
        } catch{
            fatalError("Failed to load or decode API CONFIG (JSON)")
        }
    }()
    
    //Singleton Desain Pattern - END
}
