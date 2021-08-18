//
//  ContentView.swift
//  MovieManage
//
//  Created by jpo on 18/08/2021.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var movie = [Movie]()
    @State private var movie = Movie(
        posterUrl: nil,
        title: "Loading ...",
        description: "Loading ...",
        rating: 0.0)
    
    var body: some View {
        ScrollView {
            MovieView(movie: movie)
            .onAppear(perform: {
                let url = URL(string: "https://api.themoviedb.org/3/movie/35?api_key=729853809f06fb387d591f389fac225e")

                let task = URLSession.shared.dataTask(with: url!) { data, res, err in

                    if let err = err {
                        print(err.localizedDescription)
                    }

                    guard let data = data else { return }

                    do {
                        let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]

                        if let json = json {
                            let posterUrl = json["poster_path"] as? String
                            let title = json["title"] as! String
                            let description = json["overview"] as! String
                            let rating = json["vote_average"] as! NSNumber
                            
                            movie = Movie(
                                posterUrl: URL(string: "https://image.tmdb.org/t/p/w500" + posterUrl!),
                                title: title,
                                description: description,
                                rating: Float(truncating: rating))
                        }
                    } catch {
                        print("Loading error !")
                    }
                }

                task.resume()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color(red: 22 / 255, green: 32 / 255, blue: 53 / 255))
    }
}
