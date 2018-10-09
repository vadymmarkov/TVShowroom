//
//  CaptionButtons.swift
//  TVShowroom
//
//  Created by Vadym Markov on 09/10/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import TVUIKit

struct Monogram: Component {
    let title = "Monogram"

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        let view = viewController.view!

        let monogramView = TVMonogramView()
        monogramView.translatesAutoresizingMaskIntoConstraints = false
        monogramView.personNameComponents = PersonNameComponents()
        monogramView.personNameComponents?.givenName = "Vadym"
        monogramView.personNameComponents?.familyName = "Markov"
        monogramView.title = "Vadym Markov"
        monogramView.subtitle = "iOS Developer"

        view.addSubview(monogramView)

        NSLayoutConstraint.activate([
            monogramView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3),
            monogramView.heightAnchor.constraint(equalTo: monogramView.widthAnchor),
            monogramView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            monogramView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

        return viewController
    }
}
