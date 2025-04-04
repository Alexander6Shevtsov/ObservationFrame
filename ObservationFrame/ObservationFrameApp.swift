//
//  ObservationFrameApp.swift
//  ObservationFrame
//
//  Created by Alexander Shevtsov on 04.04.2025.
//

import SwiftUI

@main
struct ObservationFrameApp: App {
    @State var counter = Counter()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(counter)
        }
    }
}
