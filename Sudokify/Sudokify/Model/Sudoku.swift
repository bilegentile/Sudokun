//
//  Sudoku.swift
//  Sudokify
//
//  Created by Beniamino Gentile on 25/03/24.
//

import Foundation

struct Sudoku: Codable {
    var task: [[Int]]
    
    init(task: [[Int]]) {
        self.task = task
    }
}

extension Sudoku {
    static var emptySudoku: Sudoku {
        Sudoku(task: [[0, 0, 0, 0, 0, 0, 0, 0, 0],
                      [0, 0, 0, 0, 0, 0, 0, 0, 0],
                      [0, 0, 0, 0, 0, 0, 0, 0, 0],
                      [0, 0, 0, 0, 0, 0, 0, 0, 0],
                      [0, 0, 0, 0, 0, 0, 0, 0, 0],
                      [0, 0, 0, 0, 0, 0, 0, 0, 0],
                      [0, 0, 0, 0, 0, 0, 0, 0, 0],
                      [0, 0, 0, 0, 0, 0, 0, 0, 0],
                      [0, 0, 0, 0, 0, 0, 0, 0, 0]
          ])
    }
    
    static let sampleData: Sudoku = Sudoku(task: [
        [0, 8, 7, 0, 0, 0, 0, 0, 4],
                [0, 0, 0, 9, 0, 0, 2, 0, 0],
                [0, 2, 1, 6, 5, 4, 0, 0, 7],
                [0, 0, 0, 1, 0, 8, 0, 4, 2],
                [0, 9, 8, 4, 3, 0, 0, 0, 0],
                [4, 0, 2, 0, 0, 0, 0, 0, 0],
                [8, 0, 6, 2, 0, 0, 0, 0, 0],
                [5, 0, 3, 0, 0, 6, 0, 2, 9],
                [0, 0, 0, 0, 4, 0, 0, 0, 0]
    ])
}
