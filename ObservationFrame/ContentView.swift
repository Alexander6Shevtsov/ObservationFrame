//
//  ContentView.swift
//  ObservationFrame
//
//  Created by Alexander Shevtsov on 04.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State var user = UserManager(name: "John", surname: "Johnson", score: 10)
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Your name: \(user.fullName)")
                Text("Your score: \(user.score)")
            }
            .font(.title)
            .padding([.top, .bottom], 50)
            
            Text("Change user data")
                .font(.headline)
            VStack {
                TextField("Name", text: $user.name)
                TextField("Surname", text: $user.surname)
            }
            .textFieldStyle(.roundedBorder)
            
            Button("Increase score") {
                user.score += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
