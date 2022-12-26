//
//  AppetiserListCell.swift
//  AppEtizers
//
//  Created by Rodrigues, Luis on 26/12/2022.
//

import SwiftUI

struct AppetiserListCell: View {
	let appetiser: Appetiser
	
    var body: some View {
		HStack {
			Image("\(appetiser.imageURL)")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 120, height: 90)
				.cornerRadius(8)
			VStack(alignment: .leading, spacing: 5) {
				Text(appetiser.name)
					.font(.title2)
					.fontWeight(.medium)
				
				Text("$\(appetiser.price, specifier: "%.2f")")
					.foregroundColor(.secondary)
					.fontWeight(.semibold)
			}
			.padding(.leading)
		}
    }
}

struct AppetiserListCell_Previews: PreviewProvider {
    static var previews: some View {
		AppetiserListCell(appetiser: MockData.sampleAppetiser)
    }
}
