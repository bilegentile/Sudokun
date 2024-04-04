//
//  SeedsViewModel.swift
//  Sudokun
//
//  Created by Beniamino Gentile on 04/04/24.
//  Copyright © 2024 Beniamino Gentile. All rights reserved.
//

import Foundation

class SeedsViewModel: ObservableObject {
    
    func getSudoku() async throws -> Puzzles {
        let endpoint = "https://shadify.dev/api/sudoku/generator"
        
        guard let url = URL(string: endpoint) else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(Puzzles.self, from: data)
        } catch {
            throw NetworkError.invalidData
        }
    }
}
