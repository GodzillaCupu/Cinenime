//
//  Errors.swift
//  Cinenime
//
//  Created by Ery Prasetyo on 23/09/26.
//

import Foundation

enum APIConfigError: Error,LocalizedError{
    case fileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(underlyingError: Error)
    
    
    var errorDescription: String?{
        switch self {
        case .fileNotFound:
            return "API Configruation file not found"
        case .dataLoadingFailed(underlyingError: let error):
            return "Failed to load data from API Configuration file : \(error.localizedDescription)"
        case .decodingFailed(underlyingError: let error):
            return "Failed to decode API Configuration : \(error.localizedDescription)"
        } 
    }
}
