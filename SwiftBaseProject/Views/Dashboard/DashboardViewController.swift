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

class DashaboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  var viewModel: DashboardViewModel!
  private var disposeBag = DisposeBag()

  @IBOutlet weak var discoverMoviesTableView: UITableView!
  var movies : [Movie]?
  var moviesAux = [Movie]()
  var indicator = UIActivityIndicatorView()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
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
