//
//  MainPresenter.swift
//  MVP
//
//  Created by Marcelo Laprea on 09/10/2018.
//  Copyright © 2018 MVP. All rights reserved.
//

import UIKit

protocol MainView: BaseView {
    func goToAuth()
    func goToHome()
}

protocol MainPresenter: Presenter {
    
}

class MainPresenterDefault: MainPresenter {
    
    let businessController: BusinessController?
    
    private weak var view: MainView?
    
    // MARK: - Initialization
    
    required init(view: BaseView?, businessController: BusinessController?) {
        self.businessController = businessController
        self.view = view as? MainView
    }
    
    // MARK: - Lifecycle
    
    func viewDidLoad() {
        
    }
    
    func viewDidApper() {
        checkUser()
    }
    
    // MARK: - Private
    
    private func checkUser() {
        //TODO: Check if user is logged in with Firebase Auth
        view?.goToHome()
    }
    
}
