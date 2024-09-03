//
//  ListingItemView.swift
//  AirBnC
//
//  Created by Moses Varghese on 9/3/24.
//

import SwiftUI

struct ListingItemView: View {
    
//    var images = [
//        "listing-1",
//        "listing-2",
//        "listing-3",
//        "listing-4",
//    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            TabView {
                ForEach(0 ... 3, id: \.self) { image in
                    Rectangle()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // listing details
            
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 8) {
                        Text("$500")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                // rating
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
                
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
