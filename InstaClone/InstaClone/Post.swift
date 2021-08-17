//
//  Post.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import SwiftUI

class Post: Identifiable, ObservableObject {
    let id = UUID()
    
    var image: URL?
    var description: String
    
    @Published var isExpanded: Bool
    @Published var isLiked: Bool
    @Published var isReported: Bool
    
    internal init(image: URL?, description: String ) {
        self.image = image
        self.description = description
        self.isExpanded = false
        self.isLiked = false
        self.isReported = false
    }
}
