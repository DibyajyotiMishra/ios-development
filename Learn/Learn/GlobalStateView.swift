//
//  GlobalStateView.swift
//  Learn
//
//  Created by Dibyajyoti Mishra on 05/01/25.
//

import SwiftUI
import Observation

// Pre iOS 17
//class AppState: ObservableObject {
//    @Published var isOn: Bool = false
//}

@Observable
// can not be a class, it has to be struct
class AppState {
    var isOn: Bool = false
}

struct BulbView: View {
    // Pre iOS 17
    // @EnvironmentObject private var appState: AppState
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        @Bindable var appState = appState
        Image(systemName: appState.isOn ? "lightbulb.fill" : "lightbulb")
            .font(.largeTitle)
            .foregroundStyle(appState.isOn ? .yellow : .black)
        Toggle("isOn", isOn: $appState.isOn)

        
//        Button("Toggle") {
//            appState.isOn.toggle()
//        }
    }
}

struct RoomView: View {
    
    var body: some View {
        BulbView()
    }
}

struct GlobalStateView: View {
    // Pre iOS 17
    //  @EnvironmentObject private var appState: AppState
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        VStack {
            RoomView()
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(appState.isOn ? .black : .white)
    }
}

#Preview {
    // Pre iOS 17
    // GlobalStateView().environmentObject(AppState())
    
    GlobalStateView().environment(AppState())
}
