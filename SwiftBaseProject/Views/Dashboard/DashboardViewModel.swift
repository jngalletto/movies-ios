//
//  DashboardViewModel.swift
//  SwiftBaseProject
//
//  Created by Mauricio Cousillas on 3/15/18.
//  Copyright © 2018 Mauricio Cousillas. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

class DashboardViewModel {

  private var disposeBag = DisposeBag()
  var movies = BehaviorRelay<[Movie]?>(value: nil)
  var genres = BehaviorRelay<[Genre]?>(value: nil)
  var user = BehaviorRelay<User?>(value: nil)

  func fetchMovies() {
    let request: Observable<MoviesResponse> = MovieServiceManager.shared.request(MovieService.fetchMovies)
    request.subscribe(
        onNext: { movies in
            self.movies.accept(movies.results)
        }, onError: { error in
            print(error.localizedDescription)
        }
    ).disposed(by: disposeBag)
  }
    
  func fetchGenres() {
    let request: Observable<GenresResponse> = MovieServiceManager.shared.request(MovieService.fetchGenres)
        request.subscribe(
            onNext: { genresResponse in
                self.genres.accept(genresResponse.genres)
        }, onError: { error in
            print(error.localizedDescription)
        }).disposed(by: disposeBag)
    }
    
    func fetchMoviesByGenres(genreId: Int) {
        let request: Observable<MoviesResponse> = MovieServiceManager.shared.request(MovieService.fetchMoviesByGenre(genreId: genreId))
        request.subscribe(
            onNext: { movies in
                self.movies.accept(movies.results)
        }, onError: { error in
            print(error.localizedDescription)
        }).disposed(by: disposeBag)
    }
}
