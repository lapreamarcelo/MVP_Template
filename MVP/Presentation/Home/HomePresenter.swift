//
//  HomePresenter.swift
//  MVP
//
//  Created by Marcelo Laprea on 10/10/2018.
//  Copyright © 2018 MVP. All rights reserved.
//

import UIKit

protocol HomeView: BaseView {
    
}

protocol HomePresenter: Presenter {
    
}

class HomePresenterDefault: HomePresenter {
    
    let businessController: BusinessController?
    
    private weak var view: HomeView?
    
    // MARK: - Initialization
    
    required init(view: BaseView?, businessController: BusinessController?) {
        self.businessController = businessController
        self.view = view as? HomeView
    }
    
    // MARK: - Lifecycle
    
    func viewDidLoad() {
        
    }
    
    func viewDidApper() {
        
    }
    
}
