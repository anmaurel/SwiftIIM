//
//  RestMovie.swift
//  MovieManage
//
//  Created by jpo on 19/08/2021.
//
import Foundation

struct RestMovie: Codable {
    let id: Int
    let title: String
    let posterUrl: String?
    let description: String?
    let rating: Float
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case posterUrl = "poster_path"
        case description = "overview"
        case rating = "vote_average"
    }
}
