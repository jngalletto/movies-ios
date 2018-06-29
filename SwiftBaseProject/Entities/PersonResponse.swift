//
//  PersonResponse.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/27/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation

struct ParsonResponse: Codable {
    let page: Int
    let results: [Person]
}
