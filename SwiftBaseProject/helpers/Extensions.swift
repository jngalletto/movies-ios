//
//  Extensions.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/26/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    public func imageFromServerURL(urlString: String) {
        URLSession.shared.dataTask(with: URL(string: urlString)!, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                self.image = UIImage(data: data!)
            })
            
        }).resume()
    }
}
