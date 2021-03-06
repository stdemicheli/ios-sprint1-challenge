//
//  MovieController.swift
//  Movie List
//
//  Created by De MicheliStefano on 27.07.18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func create(title: String, seen: Bool = false) {
        let movie = Movie(title: title, seen: seen)
        movies.append(movie)
        movies = movies.sorted(by: {$0.title < $1.title} )
    }
    
    func delete(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)
    }
    
    func toggleSeen(movie: Movie) -> Movie {
        guard let index = movies.index(of: movie) else { return movie }
        var movie = movies[index]
        movie.seen = !movie.seen
        
        movies.remove(at: index)
        movies.insert(movie, at: index)
        return movies[index]
    }
    
    private(set) var movies: [Movie] = []
    
}
