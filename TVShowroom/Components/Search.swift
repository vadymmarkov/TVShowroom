//
//  Search.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

struct Search: Component {
    let title = "Search"

    func makeViewController() -> UIViewController {
        return ViewController()
    }
}

// MARK: - Private

private final class ViewController: UIViewController {
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Search", for: .normal)
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
        let searchController = UISearchController(searchResultsController: UIViewController())
        searchController.searchBar.placeholder = NSLocalizedString("Enter keyword", comment: "")

        let searchContainer = UISearchContainerViewController(searchController: searchController)
        let searchNavigationController = UINavigationController(rootViewController: searchContainer)
        present(searchNavigationController, animated: true, completion: nil)
    }
}
