//
//  NavigationBar.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

struct NavigationBar: Component {
    let title = "Navigation Bar"

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.navigationItem.title = "Title"

        return UINavigationController(rootViewController: viewController)
    }
}
