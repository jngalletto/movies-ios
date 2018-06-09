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
    var movies = BehaviorRelay<Movies?>(value: nil)
    
    init() {
        movies.accept(MovieController.sharedInstance.moviesList)
    }
    
    func fetchMovies() {
        MovieController.sharedInstance.fetchMovies()
            .subscribe(
                onNext: { _ in
//                    AppRouter.sharedInstance.navigate(to: LoginRoute.login(username: AppDelegate.getUserNameFromDefaults()), with: .changeRoot)
            }
            ).disposed(by: disposeBag)
    }
}
