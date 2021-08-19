//
//  MoviesView.swift
//  MovieManage
//
//  Created by jpo on 19/08/2021.
//

import SwiftUI

struct MoviesView: View {
    
    @State private var movies: [Movie] = []
    
    var body: some View {
        ScrollView {
            ForEach(self.movies) { movie in
                MovieView(movie: movie)
            }
            .onAppear(perform: {
                let moviesUrl = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=729853809f06fb387d591f389fac225e")

                let task = URLSession.shared.dataTask(with: moviesUrl!) { data, res, err in

                    if let err = err {
                        print(err.localizedDescription)
                    }

                    guard let data = data else { return }
                    
                    let jsonDecoder = JSONDecoder()
                    let restMovies = try! jsonDecoder.decode(RestMovies.self, from: data)
                    
                    for movie in restMovies.results {
                        let toPush = Movie(
                            posterUrl: URL(string: "https://image.tmdb.org/t/p/w500\(movie.posterUrl ?? "")"),
                            title: movie.title,
                            description: movie.description ?? "",
                            rating: movie.rating)
                        
                        self.movies.append(toPush)
                    }
                }
                task.resume()
            })
        }
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}
