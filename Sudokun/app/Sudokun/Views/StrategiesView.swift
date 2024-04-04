//
//  StrategiesView.swift
//  Sudokun
//
//  Created by Beniamino Gentile on 04/04/24.
//  Copyright © 2024 Beniamino Gentile. All rights reserved.
//

import SwiftUI

struct StrategiesView: View {
	
	@EnvironmentObject var viewRouter: ViewRouter
	
	var body: some View {
		ScrollView {
			VStack(spacing: 0) {
				GenericTopBarView(title: "main.strategies",
				destination: Pages.home)
				
				Spacer()
				Text("Soon...")
					.font(.custom("CaviarDreams-Bold", size: 15))
			}
		}
	}
}
