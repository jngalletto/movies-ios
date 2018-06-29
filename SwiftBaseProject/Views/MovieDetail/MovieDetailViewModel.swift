//
//  MovieDetailViewModel.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/9/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

class MovieDetailViewModel {
    
    private var disposeBag = DisposeBag()
    var movie = BehaviorRelay<MovieResponse?>(value: nil)
    var trailer = BehaviorRelay<Trailer?>(value: nil)
    
    func fetchMovie(movieIdentifier: Int) {
        let request: Observable<MovieResponse> = MovieServiceManager.shared.request(MovieService.fetchMovie(id: movieIdentifier))
        request.subscribe(
            onNext: { movie in
                self.movie.accept(movie)
        }, onError: { error in
            print(error.localizedDescription)
        }).disposed(by: disposeBag)
    }
    
    func fetchTrailer(movieIdentifier: Int) {
        let request: Observable<TrailerResponse> = MovieServiceManager.shared.request(MovieService.fetchTrailer(id: movieIdentifier))
        request.subscribe(
            onNext: { trailerResponse in
                if trailerResponse.results.count > 1 {
                    self.trailer.accept(trailerResponse.results[0])
                }
        }, onError: { error in
            print(error.localizedDescription)
        }).disposed(by: disposeBag)
    }
}
