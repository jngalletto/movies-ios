//
//  MovieDetailViewController.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/9/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import UIKit
import AVKit
import AVFoundation
import youtube_ios_player_helper

class MovieDetailViewController: UIViewController {
    
    var viewModel: MovieDetailViewModel!
    private var disposeBag = DisposeBag()
    
    @IBOutlet weak var moviePosterImage: UIImageView!
    
    @IBOutlet weak var playerView: YTPlayerView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieGenresTitle: UILabel!
    @IBOutlet weak var movieRateLabel: UILabel!
    @IBOutlet weak var movieWriterLabel: UILabel!
    @IBOutlet weak var movieDirectorLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var movieId: Int!
    var movieResponse: MovieResponse?
    var movieTrailer: Trailer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.moviePosterImage.layer.cornerRadius = 6.0
        self.moviePosterImage.clipsToBounds = true
        setup()
    }
    
    func setup() {
        self.viewModel = MovieDetailViewModel()
        viewModel.movie.asObservable().subscribe(
            onNext: { movie in
                self.movieResponse = movie
                self.updateData()
        })
        
        viewModel.trailer.asObservable().subscribe(
            onNext: { trailer in
                self.movieTrailer = trailer
                self.showTrailer()
        })
        
        viewModel.fetchMovie(movieIdentifier: self.movieId)
        viewModel.fetchTrailer(movieIdentifier: self.movieId)
    }
    
    func updateData() {
        if let movie = movieResponse {
            let posterPath = "\(Constants.apiImageBaseUrl)/t/p/w500\(movie.posterPath)"
            let backdropPath = "\(Constants.apiImageBaseUrl)/t/p/w500\(movie.backdropPath)"

            
            moviePosterImage.imageFromServerURL(urlString: posterPath)
            movieTitleLabel.text = movie.title
            var genresString = ""
            for genre in movie.genres {
                if genresString.isEmpty {
                    genresString = genre.name
                } else {
                    genresString += " | \(genre.name)"
                }
            }
            movieGenresTitle.text = genresString
            movieRateLabel.text = String(movie.voteAverage)
            movieDirectorLabel.text = movie.releaseDate
            movieWriterLabel.text = String(movie.revenue)
            descriptionLabel.text = movie.overview
        }
    }
    
    func showTrailer() {
        if let trailer = movieTrailer {
            self.playerView.load(withVideoId: trailer.key)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
