//
//  ContentView.swift
//  ObservationFrame
//
//  Created by Alexander Shevtsov on 04.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State var user = UserManager(name: "John", surname: "Johnson", score: 10)
    @Environment(Counter.self) var counter
    
    var body: some View {
        VStack(spacing: 20) {
            
            UserInfoView(user: user)
            
            Text("Change user data")
                .font(.headline)
            VStack {
                TextField("Name", text: $user.name)
                TextField("Surname", text: $user.surname)
            }
            .textFieldStyle(.roundedBorder)
            
            Button("Increase score") {
                counter.count += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(Counter())
}

struct UserInfoView: View {
    @Bindable var user: UserManager
    @Environment(Counter.self) var counter
    
    var body: some View {
        VStack {
            TextField("Name", text: $user.name)
            Text("Your score: \(counter.count)")
        }
        .font(.title)
        .padding(.vertical, 50)
    }
}
