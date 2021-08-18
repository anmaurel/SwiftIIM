//
//  ApiCall.swift
//  MovieManage
//
//  Created by jpo on 18/08/2021.
//

import Foundation

class apiCall {
    func getMovie(completion:@escaping ([Movie]) -> ()) {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/20?api_key=729853809f06fb387d591f389fac225e") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, res, err) in
            let movie = try! JSONDecoder().decode([Movie].self, from: data!)
            print(movie)
            
            DispatchQueue.main.async {
                completion(movie)
            }
        }
        .resume()
    }
}
