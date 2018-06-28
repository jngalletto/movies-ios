//
//  TrailerMovieViewController.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/28/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import UIKit
import youtube_ios_player_helper

class TrailerMovieViewController: UIViewController {
    @IBOutlet weak var playerView: YTPlayerView!
    
    var videoKey: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let videoId = videoKey {
            self.playerView.load(withVideoId: videoId)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
