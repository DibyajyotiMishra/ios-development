//
//  ContentView.swift
//  Learn
//
//  Created by Dibyajyoti Mishra on 27/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "ON": "OFF")
                    .foregroundStyle(isOn ? .black : .white)
            }).fixedSize()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(isOn ? .white : .black)
    }
}

#Preview {
    ContentView()
}
