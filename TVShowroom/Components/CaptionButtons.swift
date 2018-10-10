//
//  CaptionButtons.swift
//  TVShowroom
//
//  Created by Vadym Markov on 09/10/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import TVUIKit

struct CaptionButtons: Component {
    let title = "Caption Buttons"

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        let view = viewController.view!




        let buttonView = TVCaptionButtonView()
        buttonView.motionDirection = .horizontal
        buttonView.contentText = "Caption Button"
        buttonView.title = "Button Title"
        buttonView.subtitle = "Button Subtitle"

        view.addSubview(buttonView)

        NSLayoutConstraint.activate([
            buttonView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3),
            buttonView.heightAnchor.constraint(equalTo: buttonView.widthAnchor, multiplier: 0.5),
            buttonView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

        return viewController
    }
}
