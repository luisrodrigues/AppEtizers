//
//  OrderView.swift
//  AppEtizers
//
//  Created by Rodrigues, Luis on 25/12/2022.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
		NavigationView {
			Text("Orders")
				.navigationTitle("🧾 Orders")
		}
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
