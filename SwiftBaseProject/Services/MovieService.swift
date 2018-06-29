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
    case fetchGenres
    case fetchMoviesByGenre(genreId: Int)
    case fetchMovie(id: Int)
    case fetchTopRated
    case fetchFollowing
    case fetchTrailer(id: Int)
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
        case .fetchTopRated:
            return "/movie/top_rated"
        case .fetchFollowing:
            return "/person/popular"
        case .fetchGenres:
            return "/genre/movie/list"
        case .fetchMoviesByGenre( _):
            return "/discover/movie"
        case .fetchTrailer(let id):
            return "movie/\(id)/videos"
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
        case .fetchTopRated:
            return .requestParameters(
                parameters: ["api_key":Constants.api_key], encoding: URLEncoding.default
            )
        case .fetchFollowing:
            return .requestParameters(
                parameters: ["api_key":Constants.api_key], encoding: URLEncoding.default
            )
        case .fetchGenres:
            return .requestParameters(
                parameters: ["api_key":Constants.api_key], encoding: URLEncoding.default
            )
        case .fetchMoviesByGenre(let genreId):
            return .requestParameters(
                parameters: ["api_key":Constants.api_key, "with_genres":genreId], encoding: URLEncoding.default
            )
        case .fetchTrailer( _):
            return .requestParameters(
                parameters: ["api_key":Constants.api_key], encoding: URLEncoding.default
            )
        }
    }
}
    
class MovieServiceManager: BaseManager<MovieService> {
    static let shared = MovieServiceManager()
}
