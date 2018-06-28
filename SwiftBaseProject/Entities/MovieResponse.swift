//
//  MovieResponse.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/26/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation

struct MovieResponse : Codable {
    
    let id: Int
    let originalTitle: String
    let overview: String
    let popularity: Double
    let posterPath: String
    let adult: Bool
    let backdropPath: String
    let budget: Int
    let genres: [Genre]
    let releaseDate: String
    let revenue: Int
    let runtime: Int
    let status: String
    let tagline: String
    let title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int
}

