//
//  AppetizerListView.swift
//  AppEtizers
//
//  Created by Rodrigues, Luis on 25/12/2022.
//

import SwiftUI

struct AppetiserListView: View {
	
	@StateObject var viewModel = AppetiserListViewModel()
	
	var body: some View {
		NavigationView {
			List(viewModel.appetisers, id: \.id) { appetiser in
				AppetiserListCell(appetiser: appetiser)
			}
			.navigationTitle("🥘 Appetisers")
		}
		.onAppear {
			viewModel.getAppetisers()
		}
	}
}

struct AppetizerListView_Previews: PreviewProvider {
	static var previews: some View {
		AppetiserListView()
	}
}
