//
//  Buttons.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import TVUIKit

struct Buttons: Component {
    let title = "Buttons"

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        let view = viewController.view!

        let buttons = [
            UIButton(type: .plain, title: "Read more"),
            UIButton(type: .system, title: "Read more"),
            UIButton(type: .contactAdd),
            UIButton(type: .infoLight)
        ]

        let stackView = UIStackView(arrangedSubviews: buttons)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 50
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

        return viewController
    }
}

// MARK: - Private extensions

private extension UIButton {
    convenience init(type: UIButton.ButtonType, title: String) {
        self.init(type: type)
        setTitle(title, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
