//
//  RestMovies.swift
//  MovieManage
//
//  Created by jpo on 19/08/2021.
//

import Foundation

struct RestMovies: Codable {
    let page: Int
    let results: [RestMovie]
    let totalPages: Int
    let totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
