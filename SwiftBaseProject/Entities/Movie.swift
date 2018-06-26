//
//  Movie.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/6/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation

struct Movie: Codable {
    
    let id: String
    let title: String
    let overview: String
    let voteAverage: Double
    let popularity: Double
    let posterPath: String
    let adult: Bool
    let releaseDate: String
    let runtime: String
    let genres: [Int]
}

