//
//  Movies.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/9/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation

struct MoviesResponse: Codable {
    let page: Int
    let results: [Movie]
}
