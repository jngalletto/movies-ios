//
//  DashboardViewController.swift
//  SwiftBaseProject
//
//  Created by Mauricio Cousillas on 3/12/18.
//  Copyright © 2018 Mauricio Cousillas. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import UIKit

class DiscoverMovieViewCell: UITableViewCell {
  @IBOutlet weak var moviePoster: UIImageView!
  @IBOutlet weak var movieTitle: UILabel!
  @IBOutlet weak var movieOverview: UILabel!
}

class GenresViewCell: UICollectionViewCell {

    @IBOutlet weak var genreTitLE: UILabel!
}

class DashaboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
  var viewModel: DashboardViewModel!
  private var disposeBag = DisposeBag()

  @IBOutlet weak var genresCollectionView: UICollectionView!
  @IBOutlet weak var discoverMoviesTableView: UITableView!
  var movies : [Movie]?
  var genres : [Genre]?
  var indicator = UIActivityIndicatorView()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
    genresCollectionView.delegate = self
    genresCollectionView.dataSource = self
    discoverMoviesTableView.delegate = self
    discoverMoviesTableView.dataSource = self
  }

  func setup() {
    self.viewModel = DashboardViewModel()
    viewModel.movies.asObservable().subscribe(
        onNext: { movies in
            self.movies = movies
            self.discoverMoviesTableView.reloadData()
        }
    )
    viewModel.genres.asObservable().subscribe(
        onNext: { genres in
            self.genres = genres
            self.genresCollectionView.reloadData()
        }
    )
    viewModel.fetchGenres()
    viewModel.fetchMovies()
  }
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if let movieList = movies {
        return movieList.count
    } else {
        return 0
    }
  }
    
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as! DiscoverMovieViewCell
    if let movieList = movies {
        let cellMovie = movieList[indexPath.row]
        
        let title = cellMovie.title
        let overview = cellMovie.overview
        let posterPath = "\(Constants.apiImageBaseUrl)/t/p/w500\(cellMovie.posterPath)"
            
        cell.movieTitle?.text = title
        cell.movieOverview?.text = overview
        cell.moviePoster?.imageFromServerURL(urlString: posterPath)
      }
      return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let genresList = genres {
            return genresList.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let genreCell = collectionView.dequeueReusableCell(withReuseIdentifier: "genresViewCell", for: indexPath) as! GenresViewCell
        if let genresList = genres {
            let cellGenre = genresList[indexPath.row]
            genreCell.genreTitLE?.text = cellGenre.name
        }
        return genreCell
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let genresList = genres {
            let genre = genresList[indexPath.item]
            viewModel.fetchMoviesByGenres(genreId: genre.id)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = discoverMoviesTableView.indexPathForSelectedRow
        let selectedRow = indexPath!.row
        
        if segue.identifier == "movieDetailSegue" {
            if let movieList = movies {
                let selectedMovieId = movieList[selectedRow].id
                let movieDetailController = segue.destination as! MovieDetailViewController
                movieDetailController.movieId = selectedMovieId
            }
        }
    }
}
