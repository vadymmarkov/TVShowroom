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
        return ViewController()
    }
}

// MARK: - Private

private final class ViewController: UIViewController {
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Show", for: .normal)
        button.addTarget(self, action: #selector(handleButtonTap), for: .primaryActionTriggered)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }

    @objc private func handleButtonTap() {
        let viewControllers = [
            UIViewController(tabTitle: "Featured"),
            UIViewController(tabTitle: "Top Charts"),
            UIViewController(tabTitle: "Categories"),
            UIViewController(tabTitle: "Purchased"),
            UIViewController(tabTitle: "Search")
        ]

        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(viewControllers, animated: false)

        present(tabBarController, animated: true, completion: nil)
    }
}

private extension UIViewController {
    convenience init(tabTitle: String) {
        self.init()
        title = tabTitle
    }
}
