//
//  LearnApp.swift
//  Learn
//
//  Created by Dibyajyoti Mishra on 27/12/24.
//

import SwiftUI

@main
struct LearnApp: App {
    // Pre iOS 17
    // @StateObject private var appState = AppState()
    
    @State private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                // Pre iOS 17
                // ContentView().environmentObject(appState)
                
                ContentView().environment(appState)
            }
        }
    }
}
