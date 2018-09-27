//
//  Component.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

protocol Component {
    var title: String { get }
    func makeViewController() -> UIViewController
}
