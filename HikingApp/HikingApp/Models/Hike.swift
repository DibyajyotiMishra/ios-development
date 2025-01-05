//
//  Hike.swift
//  HikingApp
//
//  Created by Dibyajyoti Mishra on 22/12/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id =  UUID()
    let name: String
    let image: String
    let distance: Double
}
