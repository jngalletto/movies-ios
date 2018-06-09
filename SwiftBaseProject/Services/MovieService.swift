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
}

extension MovieService: TargetType {
    var headers: [String : String]? {
        return [:]
    }
    
    var path: String {
        switch self {
        case .fetchMovies:
            return "/discover/movie"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var task: Task {
        switch self {
        case .fetchMovies:
            return .requestParameters(
                parameters: [:], encoding: JSONEncoding.default
            )
        }
    }
}
    
class MovieServiceManager: BaseManager<MovieService> {}
