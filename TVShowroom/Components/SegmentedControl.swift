//
//  SegmentedControl.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

struct SegmentedControl: Component {
    let title = "Segmented Control"

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        let view = viewController.view!

        let segmentedControl = UISegmentedControl(items: ["Featured", "Top Charts", "Categories", "Purchased"])
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)

        NSLayoutConstraint.activate([
            segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        return viewController
    }
}
