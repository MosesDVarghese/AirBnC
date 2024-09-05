//
//  ListingItemView.swift
//  AirBnC
//
//  Created by Moses Varghese on 9/3/24.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarouselView(listing: listing)
                .frame(width: 370, height: 320)
                .cornerRadius(15)
            
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 8) {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("night")
                            .foregroundStyle(.black)
                    }
                }
                
                Spacer()
                
                // rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
                
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
