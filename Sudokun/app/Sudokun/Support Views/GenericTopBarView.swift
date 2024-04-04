//
//  GenericTopBarView.swift
//  Sudokun
//
//  Created by Beniamino Gentile on 04/04/24.
//  Copyright © 2024 Beniamino Gentile. All rights reserved.
//

import SwiftUI

struct GenericTopBarView: View {
	private var title: String!
	private var destination: Int!
	
	@EnvironmentObject var viewRouter: ViewRouter
	
	private let frameSize: CGFloat = Screen.cellWidth / 2
	
	init(title: String, destination: Int) {
		self.title = title
		self.destination = destination
	}
	
	var body: some View {
		ZStack {
			Text(LocalizedStringKey(title))
				.font(.custom("CaviarDreams-Bold", size: 20))
			
			HStack {
				Button(
					action: {
						withAnimation(.easeIn) {
							self.viewRouter.setCurrentPage(page: self.destination)
						}
				},
					label: {
						Image(systemName: "chevron.left")
						Text("main.back")
							.font(.custom("CaviarDreams-Bold", size: 15))
					}
				)
					.foregroundColor(Color(.label))
				Spacer()
			}
		}
		.padding(.top)
		.padding(.leading)
		.padding(.trailing)
	}
}

