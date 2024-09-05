//
//  ExploreService.swift
//  AirBnC
//
//  Created by Moses Varghese on 9/5/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
