//
//  BindingView.swift
//  Learn
//
//  Created by Dibyajyoti Mishra on 05/01/25.
//

import SwiftUI

struct LightBulbView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
            .font(.largeTitle)
            .foregroundStyle(isOn ? .yellow : .black)
        Button("Toggle") {
            isOn.toggle()
        }
    }
}

struct BindingView: View {
    @State private var isBulbOn: Bool = false
    var body: some View {
        VStack {
            LightBulbView(isOn: $isBulbOn)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(isBulbOn ? .black : .white)
    }
}

#Preview {
    BindingView()
}
