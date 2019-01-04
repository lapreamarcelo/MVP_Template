//
//  ViewController.swift
//  MVP
//
//  Created by Marcelo Laprea on 09/10/2018.
//  Copyright © 2018 MVP. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var presenter: Presenter?
    
    private var homePresenter: HomePresenter {
        guard let viewPresenter = presenter as? HomePresenter else {
            fatalError("MapPresenter - Can't be nil!")
        }
        
        return viewPresenter
    }
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        homePresenter.viewDidLoad()
    }
    
    // MARK: - Segue Handler
    
    // MARK: - Private
    
    private func setup() {
        
    }
}
