//
//  TabBar.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

struct TabBar: Component {
    let title = "Tab Bar"

    func makeViewController() -> UIViewController {
        let viewControllers = [
            UIViewController(tabTitle: "Featured"),
            UIViewController(tabTitle: "Top Charts"),
            UIViewController(tabTitle: "Categories"),
            UIViewController(tabTitle: "Purchased"),
            UIViewController(tabTitle: "Search")
        ]

        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(viewControllers, animated: false)
        return tabBarController
    }
}

// MARK: - Private

private extension UIViewController {
    convenience init(tabTitle: String) {
        self.init()
        title = tabTitle
    }
}
