//
//  ContentView.swift
//  Sudokify
//
//  Created by Beniamino Gentile on 25/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                SudokuView()
            }
            .navigationTitle("Sudokify")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
