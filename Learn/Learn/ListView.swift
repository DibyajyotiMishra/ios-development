//
//  ListView.swift
//  Learn
//
//  Created by Dibyajyoti Mishra on 27/12/24.
//

import SwiftUI

struct ListView: View {
    
    @State private var friends: [String] = ["Test", "Test1", "Test2"]
    @State private var searchText: String = ""
    @State private var filteredFriends: [String] = []
    
    var body: some View {
        VStack {
            List(filteredFriends, id: \.self) {
                friend in
                    Text("\(friend)")
                
            }.listStyle(.plain)
            .searchable(text: $searchText)
            .onChange(of: searchText) {
                if searchText.isEmpty {
                    filteredFriends = friends
                }
                else {
                    filteredFriends =  friends.filter {
                    $0.contains(searchText)
                 }
               }
            }
            Spacer()
        }.padding()
            .onAppear(perform: {
                filteredFriends = friends
            })
            .navigationTitle("Friends")
    }
}

#Preview {
    NavigationStack{
        ListView()
    }
}
