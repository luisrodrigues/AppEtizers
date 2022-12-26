//
//  AppetizerListView.swift
//  AppEtizers
//
//  Created by Rodrigues, Luis on 25/12/2022.
//

import SwiftUI

struct AppetiserListView: View {
    var body: some View {
		NavigationView {
			List(MockData.appetisers, id: \.id) { appetiser in
				AppetiserListCell(appetiser: appetiser)
			}
			.navigationTitle("🥘 Appetisers")
		}
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserListView()
    }
}
