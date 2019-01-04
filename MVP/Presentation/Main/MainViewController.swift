//
//  MainViewController.swift
//  MVP
//
//  Created by Marcelo Laprea on 09/10/2018.
//  Copyright © 2018 MVP. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var presenter: Presenter?
    
    private var mainPresenter: MainPresenter {
        guard let viewPresenter = presenter as? MainPresenter else {
            fatalError("MainPresenter - Can't be nil!")
        }
        
        return viewPresenter
    }
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = MainPresenterDefault(view: self, businessController: nil)
        mainPresenter.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        mainPresenter.viewDidApper()
    }
    
    // MARK: - Segue Handler
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let segueID = SegueIdentifier(rawValue: identifier) else {
            return
        }
        
        switch segueID {
        case .authFlow:
            break
            
        case .homeFlow:
            if let destinationVC = segue.destination as? HomeViewController {
                destinationVC.presenter = HomePresenterDefault(view: destinationVC as? BaseView, businessController: nil)
            }
        }
        
    }
    
}

// MARK: - SegueHandlerType

extension MainViewController: SegueHandlerType {
    
    enum SegueIdentifier: String {
        case authFlow = "ShowAuthSegue"
        case homeFlow = "ShowHomeSegue"
    }
    
}

// MARK: - MainView

extension MainViewController: MainView {
    
    func goToHome() {
        performSegue(withIdentifier: SegueIdentifier.homeFlow.rawValue, sender: nil)
    }
    
    func goToAuth() {
        
    }
    
}
