//
//  Trailer.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/28/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation

struct Trailer: Codable {
    var id: String
    var key: String
    var name: String
    var site: String
    var size: Int
    var type: String
}
