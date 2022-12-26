//
//  Appetiser.swift
//  AppEtizers
//
//  Created by Rodrigues, Luis on 26/12/2022.
//

import Foundation

struct Appetiser: Decodable {
	let id: Int
	let name: String
	let description: String
	let price: Double
	let imageURL: String
	let calories: Int
	let protein: Int
	let carbs: Int
}

struct AppetiserResponse {
	let request: [Appetiser]
}

struct MockData {
	static let sampleAppetiser = Appetiser(
		id: 0001,
		name: "Test Apple",
		description: "Test",
		price: 11.99,
		imageURL: "asian-flank-steak",
		calories: 1,
		protein: 1,
		carbs: 1
	)
	
	static let appetisers = [sampleAppetiser, sampleAppetiser, sampleAppetiser, sampleAppetiser]
}
