//
//  MovieController.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/9/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import RxSwift

class MovieController {
    
    static let sharedInstance = MovieController()
    private let serviceManager = MovieServiceManager()
    private let dataAccess = MovieDataAccess()
    private var disposeBag = DisposeBag()
    
    var moviesList: Movies? {
        return dataAccess.movies
    }
    
    func fetchMovies() -> Observable<Movies> {
        let serviceCall = serviceManager.provider.rx
            .request(MovieService.fetchMovies)
            .filterSuccessfulStatusCodes()
            .map(Movies.self)
            .asObservable()
        
        return serviceCall
            .do(onNext: { [weak self] movies in
                self?.dataAccess.save(moviesList: movies)
              })
    }
}
