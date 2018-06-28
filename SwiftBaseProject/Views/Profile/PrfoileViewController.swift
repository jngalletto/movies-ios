//
//  PrfoileViewController.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/21/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import UIKit

class MovieLikeCell: UICollectionViewCell {
    @IBOutlet weak var movieCellPoster: UIImageView!
}

class FollowingCell: UICollectionViewCell {
    @IBOutlet weak var personImage: UIImageView!
}

class ProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var viewModel: ProfileViewModel!
    private var disposeBag = DisposeBag()
    
    private var moviesCollection = true
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var moviesButton: UIButton!
    @IBOutlet weak var followingButton: UIButton!
    @IBOutlet weak var movieLikesButton: UIButton!
    @IBOutlet weak var movieLikesCollectionView: UICollectionView!
    
    var moviesLiked : [Movie]?
    var following : [Person]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieLikesCollectionView.delegate = self
        movieLikesCollectionView.dataSource = self
        setupProfileImage()
        setupCollection()
        setup()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupProfileImage() {
        self.profileImageView.imageFromServerURL(urlString: "https://image.tmdb.org/t/p/w500/lrhth7yK9p3vy6p7AabDUM1THKl.jpg")
        self.profileImageView.layer.borderWidth = 1.0
        self.profileImageView.layer.masksToBounds = false
        self.profileImageView.layer.borderColor = UIColor.black.cgColor
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width/2
        self.profileImageView.clipsToBounds = true
    }
    
    func setupCollection() {
        let numberOfCellsPerRow: CGFloat = 2
        self.movieLikesCollectionView.backgroundColor = Constants.Colors.backgroundColor
        if let flowLayout = movieLikesCollectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            let horizontalSpacing = flowLayout.minimumInteritemSpacing
            let cellWidth = (view.frame.width - max(0, numberOfCellsPerRow - 1) * horizontalSpacing) / numberOfCellsPerRow
            flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
    }
    
    func setup() {
        self.viewModel = ProfileViewModel()
        viewModel.movies.asObservable().subscribe(
            onNext: { movies in
                self.moviesLiked = movies
                self.moviesCollection = true
                self.movieLikesCollectionView.reloadData()
            }
        )
        viewModel.following.asObservable().subscribe(
            onNext: { following in
                self.following = following
                self.moviesCollection = false
                self.movieLikesCollectionView.reloadData()
            }
        )
        moviesButton.addTarget(self, action: #selector(moviesTapped), for: .touchUpInside)
        followingButton.addTarget(self, action: #selector(followingTapped), for: .touchUpInside)
        
        viewModel.fetchTopRatedMovies()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if moviesCollection {
            if let movieList = moviesLiked {
                return movieList.count
            } else {
                return 0
            }
        } else {
            if let followingList = following {
                return followingList.count
            } else {
                return 0
            }
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(moviesCollection) {
            let movieCell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieLikeCell", for: indexPath) as! MovieLikeCell
            movieCell.layer.cornerRadius = 20
            if let movieList = moviesLiked {
                let cellMovie = movieList[indexPath.row]
                let posterPath = "\(Constants.apiImageBaseUrl)/t/p/w500\(cellMovie.posterPath)"
                movieCell.movieCellPoster?.contentMode = .scaleAspectFit
                movieCell.movieCellPoster?.imageFromServerURL(urlString: posterPath)
            }
            return movieCell
        } else {
            let personCell = collectionView.dequeueReusableCell(withReuseIdentifier: "followingCell", for: indexPath) as! FollowingCell
            personCell.layer.cornerRadius = 20
            if let personList = following {
                let cellPerson = personList[indexPath.row]
                let posterPath = "\(Constants.apiImageBaseUrl)/t/p/w500\(cellPerson.profilePath)"
                personCell.personImage?.contentMode = .scaleAspectFit
                personCell.personImage?.imageFromServerURL(urlString: posterPath)
            }
            return personCell
        }
    }
    
    @objc func moviesTapped() {
        viewModel.fetchTopRatedMovies()
    }
    
    @objc func followingTapped() {
        viewModel.fetchFollowing()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showMovieSegue" && moviesCollection) {
            let detailsVC = segue.destination as! MovieDetailViewController
            let cell = sender as! MovieLikeCell
            let indexPaths = self.movieLikesCollectionView.indexPath(for: cell)
            let movieSelected = self.moviesLiked![indexPaths!.row] as Movie
            detailsVC.movieId = movieSelected.id
        }
    }
}
