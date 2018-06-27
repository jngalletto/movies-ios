//
//  LoginViewModel.swift
//  SwiftBaseProject
//
//  Created by Mauricio Cousillas on 3/12/18.
//  Copyright © 2018 Mauricio Cousillas. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

class LoginViewModel {

  private var disposeBag = DisposeBag()
  var userName = BehaviorRelay<String?>(value: nil)
  var password = BehaviorRelay<String?>(value: nil)
  var canSubmit = BehaviorRelay<Bool>(value: false)
  var loginSuccess = BehaviorRelay<Bool>(value: false)
  var error = BehaviorRelay<String?>(value: nil)

  init(with username: String?) {
    userName.accept(username)
    Observable.combineLatest(
      userName.asObservable(),
      password.asObservable()
    ).subscribe(
      onNext: { [unowned self] (user, pass) in
        guard let user = user, let pass = pass else { return }
        self.canSubmit.accept(!user.isEmpty && !pass.isEmpty)
      }
    ).disposed(by: disposeBag)
  }

  func login() {
    guard let username = userName.value, let password = password.value else { return }
    let userRequest: Observable<User> = UserServiceManager.shared.request(UserService.login(username: username, password: password))
    
    AppDelegate.saveUserNameOnDefaults(username: username)
    self.loginSuccess.accept(true)
//    userRequest.subscribe(
//        onNext: { user in
//            AppDelegate.saveUserNameOnDefaults(username: username)
//            self.loginSuccess.accept(true)
//        }, onError: { error in
//            print(error.localizedDescription)
//        }
//    ).disposed(by: disposeBag)
  }
}
