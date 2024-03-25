//
//  NetworkError.swift
//  Sudokify
//
//  Created by Beniamino Gentile on 25/03/24.
//

import Foundation

enum NetworkError: Error, LocalizedError, Equatable {
    case invalidURL
    case invalidData
    
    // MARK: - Server errors
    // The API changed, or we got an invalid/unexpected response
    
    /// The response received is not a valid JSON.
    case invalidResponse
    
}
