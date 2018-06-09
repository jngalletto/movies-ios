//
//  MovieDataAccess.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/9/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import RxSwift

class MovieDataAccess: BaseDataAccess {
    
    var movies: Movies? = Movies()
    
    func fetchMovies() -> Observable<Movies?> {
        return Observable.just(movies)
    }
    
    func save(moviesList: Movies) {
        movies = moviesList
    }
}
