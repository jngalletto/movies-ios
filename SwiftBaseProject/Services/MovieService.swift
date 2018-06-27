//
//  MovieService.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/9/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import Moya

enum MovieService {
    case fetchMovies
    case fetchMovie(id: Int)
}

extension MovieService: TargetType {
    var headers: [String : String]? {
        return [:]
    }
    
    var path: String {
        switch self {
        case .fetchMovies:
            return "/discover/movie"
        case .fetchMovie(let id):
            return "/movie/\(id)"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var task: Task {
        switch self {
        case .fetchMovies:
            return .requestParameters(
                parameters: ["api_key":Constants.api_key], encoding: URLEncoding.default
            )
        case .fetchMovie( _):
            return .requestParameters(
                parameters: ["api_key":Constants.api_key], encoding: URLEncoding.default
            )
        }
    }
}
    
class MovieServiceManager: BaseManager<MovieService> {
    static let shared = MovieServiceManager()
}
