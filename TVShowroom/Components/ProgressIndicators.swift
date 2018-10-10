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

        let stackView = UIStackView(arrangedSubviews: [activityIndicatorView, progressView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 50
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        return viewController
    }
}
