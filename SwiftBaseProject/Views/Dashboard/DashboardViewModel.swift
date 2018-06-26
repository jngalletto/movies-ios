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
  var user = BehaviorRelay<User?>(value: nil)

  func fetchMovies() {
    let request: Observable<[Movie]> = MovieServiceManager.shared.request(MovieService.fetchMovies)
    request.subscribe(
        onNext: { movies in
            self.movies.accept(movies)
        }, onError: { error in
            print(error.localizedDescription)
        }
    ).disposed(by: disposeBag)
    
//    MovieServiceManager.shared.request(MovieService.fetchMovies).subscribe(
//        onNext: { (movies: [Movie]) -> Void in
//            self.movies.accept(movies)
//            // AppRouter.sharedInstance.navigate(to: LoginRoute.login(username: AppDelegate.getUserNameFromDefaults()), with: .changeRoot)
//            }
//        ).disposed(by: disposeBag)
  }

}
