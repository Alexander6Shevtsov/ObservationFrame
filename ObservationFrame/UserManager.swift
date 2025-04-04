//
//  UserManager.swift
//  ObservationFrame
//
//  Created by Alexander Shevtsov on 04.04.2025.
//

import Observation

@Observable
final class UserManager {
    var name = ""
    var surname = ""
    var score = 0
    
    var fullName: String {
        name + " " + surname
    }
    
    init(name: String = "", surname: String = "", score: Int = 0) {
        self.name = name
        self.surname = surname
        self.score = score
    }
}

@Observable
final class Counter {
    var count = 0
}
