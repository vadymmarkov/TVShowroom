//
//  ProgressIndicators.swift
//  TVShowroom
//
//  Created by Vadym Markov on 09/10/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import TVUIKit

struct ProgressIndicators: Component {
    let title = "Progress indicators"

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        let view = viewController.view!

        let activityIndicatorView = UIActivityIndicatorView(style: .whiteLarge)
        activityIndicatorView.startAnimating()

        let progressView = UIProgressView()
        progressView.progress = 0.6

        let pageControl = UIPageControl()
        pageControl.numberOfPages = 4
        pageControl.currentPage = 2

        let segmentedControl = UISegmentedControl(items: ["Featured", "Top Charts"])



        let stackView = UIStackView(arrangedSubviews: [activityIndicatorView, progressView, pageControl, segmentedControl])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 50
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        return viewController
    }
}
