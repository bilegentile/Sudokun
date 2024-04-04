//
//  NetworkError.swift
//  Sudokun
//
//  Created by Beniamino Gentile on 04/04/24.
//  Copyright © 2024 Beniamino Gentile. All rights reserved.
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
