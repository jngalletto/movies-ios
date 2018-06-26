//
//  Constants.swift
//  SwiftBaseProject
//
//  Created by Mauricio Cousillas on 3/12/18.
//  Copyright © 2018 Mauricio Cousillas. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    static let api_key = "0ce27b34f3d404a535fff6ebf9460694"
  // Sample env management
  #if STAGING
    static let apiBaseUrl = URL(string: "https://api.themoviedb.org/3")!
  #else
    static let apiBaseUrl = URL(string: "point_to_prod_here")!
  #endif
    
    struct Colors {
        // Global Colors
        static let tintColor            = UIColor(red: 255/255.0, green: 205/255.0, blue: 0/255.0, alpha: 1.0)
        static let accentColor         = UIColor(red: 51/255.0, green: 51/255.0, blue: 56/255.0, alpha: 1.0)
        static let backgroundColor           = UIColor(red: 240/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0)
        static let titleTextColor           = UIColor(red: 230/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1.0)
        static let textColor           = UIColor(red: 80/255.0, green: 80/255.0, blue: 84/255.0, alpha: 1.0)
    }
}
