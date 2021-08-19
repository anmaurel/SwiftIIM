//
//  Movie.swift
//  MovieManage
//
//  Created by jpo on 18/08/2021.
//

import SwiftUI

class Movie: Codable, Identifiable {
    let id = UUID()
    let posterUrl: URL?
    let title: String
    let description: String
    let rating: Float
    
    init(posterUrl: URL?, title: String, description: String, rating: Float) {
        self.posterUrl = posterUrl
        self.title = title
        self.description = description
        self.rating = rating
    }
}
