//
//  HikeDetailScreen.swift
//  HikingApp
//
//  Created by Dibyajyoti Mishra on 22/12/24.
//

import SwiftUI

struct HikeDetailScreen: View {
    
    let hike: Hike
    
    @State private var isZoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.image)
                .resizable()
                .aspectRatio(contentMode: isZoomed ? .fill :
                        .fit)
                .onTapGesture {
                    withAnimation {
                        isZoomed.toggle()
                    }
                }
            if !isZoomed {
                Text(hike.name)
                    .font(.title2)
                Text("\(hike.distance.formatted()) kms")
                    .font(.subheadline)
                Spacer()
            }
        }.navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailScreen(hike: Hike(name: "Somewhere in the Mountains", image: "mountain", distance: 15.8))
    }
}
