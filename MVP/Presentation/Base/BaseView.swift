//
//  BaseView.swift
//  MVP
//
//  Created by Marcelo Laprea on 09/10/2018.
//  Copyright © 2018 MVP. All rights reserved.
//

import Foundation

protocol BaseView: class {
    var presenter: Presenter? { get set }
}
