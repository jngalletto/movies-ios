//
//  TrailerResponse.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/28/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation

struct TrailerResponse: Codable {
    var id: Int
    let results: [Trailer]
}
