//
//  SudokuView.swift
//  Sudokify
//
//  Created by Beniamino Gentile on 25/03/24.
//

import SwiftUI

struct SudokuView: View {
    
    @ObservedObject var sudokuVM = SudokuViewModel()
    @State private var sudoku: Sudoku?
    
    @State private var rows: [[Int]]
    
    init(sudokuVM: SudokuViewModel = SudokuViewModel(), sudoku: Sudoku? = Sudoku.emptySudoku) {
        self.sudokuVM = sudokuVM
        self.sudoku = sudoku
        self._rows = State(initialValue: sudoku?.task ?? [[0]])
    }
    
    var body: some View {
        VStack {
                    ForEach(rows, id: \.self) { row in
                        HStack {
                            ForEach(row, id: \.self) { cell in
                                Text("\(cell)")
                                    .frame(width: 50, height: 50)
                                    .background(Color.gray)
                                    .foregroundColor(Color.white)
                                    .font(.largeTitle)
                                    .bold(cell == 5)
                                    .onTapGesture {
                                        // Handle tap gesture
                                    }
                            }
                        }
                    }
                }
        .padding()
        .task {
            do {
                sudoku = try await sudokuVM.getSudoku()
                rows = sudoku!.task
            } catch NetworkError.invalidURL {
                print("Invalid URL")
            } catch NetworkError.invalidResponse {
                print("Invalid Response")
            } catch NetworkError.invalidData {
                print("Invalid Data")
            } catch {
                print("Unexpected Error")
            }
        }
    }
}

#Preview {
    SudokuView()
}
