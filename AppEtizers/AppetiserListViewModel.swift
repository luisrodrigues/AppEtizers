//
//  AppetiserListViewModel.swift
//  AppEtizers
//
//  Created by Rodrigues, Luis on 29/12/2022.
//

import SwiftUI

final class AppetiserListViewModel: ObservableObject {
	
	@Published var appetisers: [Appetiser] = []
	
	func getAppetisers() {
		NetworkManager.shared.getAppetizers { result in
			DispatchQueue.main.async {
				switch result {
					case .success(let appetisers):
						self.appetisers = appetisers
					case .failure(let error):
						print(error.localizedDescription)
				}
			}
		}
	}
}
