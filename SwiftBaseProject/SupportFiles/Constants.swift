//
//  Constants.swift
//  SwiftBaseProject
//
//  Created by Mauricio Cousillas on 3/12/18.
//  Copyright © 2018 Mauricio Cousillas. All rights reserved.
//

import Foundation

struct Constants {
    static let api_key = "0ce27b34f3d404a535fff6ebf9460694"
  // Sample env management
  #if STAGING
    static let apiBaseUrl = URL(string: "https://api.themoviedb.org/3")!
  #else
    static let apiBaseUrl = URL(string: "point_to_prod_here")!
  #endif
}
