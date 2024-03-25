//
//  SudokuViewModel.swift
//  Sudokify
//
//  Created by Beniamino Gentile on 25/03/24.
//

import Foundation

class SudokuViewModel: ObservableObject {
    
    func getSudoku() async throws -> Sudoku {
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
            return try decoder.decode(Sudoku.self, from: data)
        } catch {
            throw NetworkError.invalidData
        }
    }
}
