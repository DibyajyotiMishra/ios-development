//
//  ContentView.swift
//  HikingApp
//
//  Created by Dibyajyoti Mishra on 22/12/24.
//

import SwiftUI

struct ContentView: View {
    let hikes = [
        Hike(name: "Somewhere in the Mountains", image: "mountain", distance: 15.8),
        Hike(name: "Let's go for a jog", image: "beach", distance: 5.2),
        Hike(name: "Let's go trekking", image: "forest", distance: 20.0)
    ]
    var body: some View {
        NavigationStack{
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self) {
                    hike in
                    HikeDetailScreen(hike: hike)
                }
        }
    }
}


struct HikeCellView: View {
    let hike: Hike
    var body: some View {
        HStack(alignment: .center) {
            Image(hike.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                .frame(width: 120)
            VStack(alignment: .leading) {
                Text(hike.name).bold()
                Text("\(hike.distance.formatted()) kms").font(.subheadline).foregroundStyle(.gray)
            }
            
            
        }
    }
}




#Preview {
    ContentView()
}
