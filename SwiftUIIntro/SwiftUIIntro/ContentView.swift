//
//  ContentView.swift
//  SwiftUIIntro
//
//  Created by Dibyajyoti Mishra on 22/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Home")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Rectangle())
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding([.horizontal], 20)
        
        AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1732722606321-dc6ec7927e97?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyNnx8fGVufDB8fHx8fA%3D%3D")!, content: {
            image in image.resizable().aspectRatio(contentMode: .fit).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1).padding(20)
        }, placeholder: {
            ProgressView("Loading...")
        })
        VStack(spacing: 10) {
            Text("Hello World!").foregroundStyle(.green)
            Text("This is Swift UI")
        }.foregroundStyle(.orange)
    }
}

#Preview {
    ContentView()
}
