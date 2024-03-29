//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 11 images.
  struct image {
    /// Image `imdb2`.
    static let imdb2 = Rswift.ImageResource(bundle: R.hostingBundle, name: "imdb2")
    /// Image `language`.
    static let language = Rswift.ImageResource(bundle: R.hostingBundle, name: "language")
    /// Image `logintop`.
    static let logintop = Rswift.ImageResource(bundle: R.hostingBundle, name: "logintop")
    /// Image `logout`.
    static let logout = Rswift.ImageResource(bundle: R.hostingBundle, name: "logout")
    /// Image `movies`.
    static let movies = Rswift.ImageResource(bundle: R.hostingBundle, name: "movies")
    /// Image `notifications`.
    static let notifications = Rswift.ImageResource(bundle: R.hostingBundle, name: "notifications")
    /// Image `play_icon`.
    static let play_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "play_icon")
    /// Image `privacy`.
    static let privacy = Rswift.ImageResource(bundle: R.hostingBundle, name: "privacy")
    /// Image `profile`.
    static let profile = Rswift.ImageResource(bundle: R.hostingBundle, name: "profile")
    /// Image `settings`.
    static let settings = Rswift.ImageResource(bundle: R.hostingBundle, name: "settings")
    /// Image `terms`.
    static let terms = Rswift.ImageResource(bundle: R.hostingBundle, name: "terms")
    
    /// `UIImage(named: "imdb2", bundle: ..., traitCollection: ...)`
    static func imdb2(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.imdb2, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "language", bundle: ..., traitCollection: ...)`
    static func language(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.language, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "logintop", bundle: ..., traitCollection: ...)`
    static func logintop(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.logintop, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "logout", bundle: ..., traitCollection: ...)`
    static func logout(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.logout, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "movies", bundle: ..., traitCollection: ...)`
    static func movies(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.movies, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "notifications", bundle: ..., traitCollection: ...)`
    static func notifications(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.notifications, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "play_icon", bundle: ..., traitCollection: ...)`
    static func play_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.play_icon, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "privacy", bundle: ..., traitCollection: ...)`
    static func privacy(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.privacy, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "profile", bundle: ..., traitCollection: ...)`
    static func profile(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.profile, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "settings", bundle: ..., traitCollection: ...)`
    static func settings(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.settings, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "terms", bundle: ..., traitCollection: ...)`
    static func terms(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.terms, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 5 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `followingCell`.
    static let followingCell: Rswift.ReuseIdentifier<FollowingCell> = Rswift.ReuseIdentifier(identifier: "followingCell")
    /// Reuse identifier `genresViewCell`.
    static let genresViewCell: Rswift.ReuseIdentifier<GenresViewCell> = Rswift.ReuseIdentifier(identifier: "genresViewCell")
    /// Reuse identifier `movieCell`.
    static let movieCell: Rswift.ReuseIdentifier<DiscoverMovieViewCell> = Rswift.ReuseIdentifier(identifier: "movieCell")
    /// Reuse identifier `movieLikeCell`.
    static let movieLikeCell: Rswift.ReuseIdentifier<MovieLikeCell> = Rswift.ReuseIdentifier(identifier: "movieLikeCell")
    /// Reuse identifier `settingsOptionCell`.
    static let settingsOptionCell: Rswift.ReuseIdentifier<SettingsOptionCell> = Rswift.ReuseIdentifier(identifier: "settingsOptionCell")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 4 view controllers.
  struct segue {
    /// This struct is generated for `DashaboardViewController`, and contains static references to 1 segues.
    struct dashaboardViewController {
      /// Segue identifier `movieDetailSegue`.
      static let movieDetailSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, DashaboardViewController, MovieDetailViewController> = Rswift.StoryboardSegueIdentifier(identifier: "movieDetailSegue")
      
      /// Optionally returns a typed version of segue `movieDetailSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func movieDetailSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, DashaboardViewController, MovieDetailViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.dashaboardViewController.movieDetailSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `LoginViewController`, and contains static references to 1 segues.
    struct loginViewController {
      /// Segue identifier `homeSegue`.
      static let homeSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, LoginViewController, UIKit.UINavigationController> = Rswift.StoryboardSegueIdentifier(identifier: "homeSegue")
      
      /// Optionally returns a typed version of segue `homeSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func homeSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, LoginViewController, UIKit.UINavigationController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.loginViewController.homeSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `ProfileViewController`, and contains static references to 1 segues.
    struct profileViewController {
      /// Segue identifier `showMovieSegue`.
      static let showMovieSegue: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, ProfileViewController, MovieDetailViewController> = Rswift.StoryboardSegueIdentifier(identifier: "showMovieSegue")
      
      /// Optionally returns a typed version of segue `showMovieSegue`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func showMovieSegue(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, ProfileViewController, MovieDetailViewController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.profileViewController.showMovieSegue, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    /// This struct is generated for `SettingsViewController`, and contains static references to 1 segues.
    struct settingsViewController {
      /// Segue identifier `segueLogout`.
      static let segueLogout: Rswift.StoryboardSegueIdentifier<UIKit.UIStoryboardSegue, SettingsViewController, UIKit.UINavigationController> = Rswift.StoryboardSegueIdentifier(identifier: "segueLogout")
      
      /// Optionally returns a typed version of segue `segueLogout`.
      /// Returns nil if either the segue identifier, the source, destination, or segue types don't match.
      /// For use inside `prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`.
      static func segueLogout(segue: UIKit.UIStoryboardSegue) -> Rswift.TypedStoryboardSegueInfo<UIKit.UIStoryboardSegue, SettingsViewController, UIKit.UINavigationController>? {
        return Rswift.TypedStoryboardSegueInfo(segueIdentifier: R.segue.settingsViewController.segueLogout, segue: segue)
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 7 storyboards.
  struct storyboard {
    /// Storyboard `Dashboard`.
    static let dashboard = _R.storyboard.dashboard()
    /// Storyboard `Home`.
    static let home = _R.storyboard.home()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `MovieDetail`.
    static let movieDetail = _R.storyboard.movieDetail()
    /// Storyboard `Profile`.
    static let profile = _R.storyboard.profile()
    /// Storyboard `Settings`.
    static let settings = _R.storyboard.settings()
    
    /// `UIStoryboard(name: "Dashboard", bundle: ...)`
    static func dashboard(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.dashboard)
    }
    
    /// `UIStoryboard(name: "Home", bundle: ...)`
    static func home(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.home)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    /// `UIStoryboard(name: "MovieDetail", bundle: ...)`
    static func movieDetail(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.movieDetail)
    }
    
    /// `UIStoryboard(name: "Profile", bundle: ...)`
    static func profile(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.profile)
    }
    
    /// `UIStoryboard(name: "Settings", bundle: ...)`
    static func settings(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.settings)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try main.validate()
      try settings.validate()
      try movieDetail.validate()
      try home.validate()
      try dashboard.validate()
      try profile.validate()
    }
    
    struct dashboard: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = DashaboardViewController
      
      let bundle = R.hostingBundle
      let name = "Dashboard"
      
      static func validate() throws {
        if UIKit.UIImage(named: "movies") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'movies' is used in storyboard 'Dashboard', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct home: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let name = "Home"
      
      static func validate() throws {
        if UIKit.UIImage(named: "settings") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'settings' is used in storyboard 'Home', but couldn't be loaded.") }
        if UIKit.UIImage(named: "profile") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'profile' is used in storyboard 'Home', but couldn't be loaded.") }
        if UIKit.UIImage(named: "movies") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'movies' is used in storyboard 'Home', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let name = "Main"
      
      static func validate() throws {
        if UIKit.UIImage(named: "logintop") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'logintop' is used in storyboard 'Main', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct movieDetail: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = MovieDetailViewController
      
      let bundle = R.hostingBundle
      let name = "MovieDetail"
      
      static func validate() throws {
        if UIKit.UIImage(named: "imdb2") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'imdb2' is used in storyboard 'MovieDetail', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct profile: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = ProfileViewController
      
      let bundle = R.hostingBundle
      let name = "Profile"
      
      static func validate() throws {
        if UIKit.UIImage(named: "profile") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'profile' is used in storyboard 'Profile', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct settings: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = SettingsViewController
      
      let bundle = R.hostingBundle
      let name = "Settings"
      
      static func validate() throws {
        if UIKit.UIImage(named: "settings") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'settings' is used in storyboard 'Settings', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
