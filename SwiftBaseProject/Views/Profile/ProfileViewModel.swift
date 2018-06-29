//
//  ProfileViewModel.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/21/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

class ProfileViewModel {
    
    private var disposeBag = DisposeBag()
    var movies = BehaviorRelay<[Movie]?>(value: nil)
    var following = BehaviorRelay<[Person]?>(value: nil)
    
    func fetchTopRatedMovies() {
        let request: Observable<MoviesResponse> = MovieServiceManager.shared.request(MovieService.fetchTopRated)
        request.subscribe(
            onNext: { movies in
                self.movies.accept(movies.results)
        }, onError: { error in
            print(error.localizedDescription)
        }).disposed(by: disposeBag)
    }
    
    func fetchFollowing() {
        let request: Observable<ParsonResponse> = MovieServiceManager.shared.request(MovieService.fetchFollowing)
        request.subscribe(
            onNext: { perosn in
                self.following.accept(perosn.results)
        }, onError: { error in
            print(error.localizedDescription)
        }).disposed(by: disposeBag)
    }
    
//    func logout() {
//        guard let username = userName.value, let password = password.value else { return }
//            UserServiceManager.shared.request(UserService.logout).subscribe(
//                onNext: { (user: User) -> Void in
//
//                }
//            )
//    }
}
