//
//  ProfileViewModel.swift
//  MoviesApp
//
//  Created by Joaquin Galletto on 6/21/18.
//  Copyright © 2018 Joaquin Galletto. All rights reserved.
//

import Foundation

class ProfileViewModel {
    
    private var disposeBag = DisposeBag()
    var userName = BehaviorRelay<String?>(value: nil)
    var password = BehaviorRelay<String?>(value: nil)
    var canSubmit = BehaviorRelay<Bool>(value: false)
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
    
    func logout() {
        guard let username = userName.value, let password = password.value else { return }
        UserController.sharedInstance.login(with: username, password: password)
            .subscribe(
                onNext: { _ in
                    AppDelegate.saveUserNameOnDefaults(username: username)
                    AppRouter.sharedInstance.navigate(to: HomeRoute.dashboard, with: .reset)
            },
                onError: { [weak self] error in
                    self?.error.accept(error.localizedDescription)
                }
            ).disposed(by: disposeBag)
    }
}
