//
//  PageControl.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

struct PageControl: Component {
    let title = "Page Control"

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        let view = viewController.view!

        let pageControl = UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.numberOfPages = 4
        pageControl.currentPage = 2

        view.addSubview(pageControl)

        NSLayoutConstraint.activate([
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pageControl.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        return viewController
    }
}
