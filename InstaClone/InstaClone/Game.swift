//
//  Game.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import Foundation

class Game: ObservableObject {
    let local: String
    let visitor: String
    
    @Published var localScore: Int
    @Published var visitorScore: Int
    
    internal init (local: String, visitor: String) {
        self.local = local
        self.visitor = visitor
        self.localScore = 0
        self.visitorScore = 0
    }
}
