//
//  DataFetcher.swift
//  Cinenime
//
//  Created by Ery Prasetyo on 24/09/26.
//

import Foundation

let tmdbBaseURL = APIConfig.shared?.tmdbBaseUrl
let tmdbAPIKey = APIConfig.shared?.tmdbAPIKey

// HTTPS://api.themoviedb.org/3/trending/movie/day?api_key=YourAPIKey
func fetchTitles(for media:String) async throws -> [Title]{
    
    //Check url and key is not null
    guard let baseURL = tmdbBaseURL else {
        throw NetworkError.missingConfig
    }
    
    guard let apiKey = tmdbAPIKey else {
        throw NetworkError.missingConfig
    }
    
    // build api url
    guard let fetchTitlesURL = URL(string: baseURL)?
        .appending(path: "3/trening\(media)/day")
        .appending(queryItems: [
            URLQueryItem(name: "api_key", value: apiKey)
        ])else{
        throw NetworkError.missingConfig
    }
    
    print(fetchTitlesURL)
    let(data,urlResponse) = try await URLSession.shared.data(from: fetchTitlesURL)
    
    guard let response = urlResponse as? HTTPURLResponse, response.statusCode == 200 else{
        throw NetworkError.badURLResponse(underlyingError: NSError(
            domain: "DataFetcher",
            code: (urlResponse as? HTTPURLResponse)?.statusCode ?? -1,
            userInfo: [NSLocalizedDescriptionKey : "Invalid HTTP Response"]))
    }
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase // for convert snake case from api -> camel case
    return try decoder.decode(APIObject.self, from: data).results
    
}
