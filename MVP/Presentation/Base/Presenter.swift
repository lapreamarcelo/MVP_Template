//
//  Presenter.swift
//  MVP
//
//  Created by Marcelo Laprea on 09/10/2018.
//  Copyright © 2018 MVP. All rights reserved.
//

import Foundation

protocol Presenter: class {
    init(view: BaseView?, businessController: BusinessController?)
    
    func viewDidLoad()
    func viewDidApper()
}
