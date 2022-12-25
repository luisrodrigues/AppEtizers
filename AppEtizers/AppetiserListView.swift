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
			Text("Appetisers")
				.navigationTitle("🥘 Appetisers")
		}
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserListView()
    }
}
