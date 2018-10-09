//
//  ComponentsViewController.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

/// https://developer.apple.com/design/human-interface-guidelines/tvos/interface-elements/digit-entry-views/
final class ComponentsViewController: UITableViewController {
    private let components: [Component] = [
        Alert(),
        DigitEntry(),
        Buttons(),
        Collection()
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.reuseIdentifier)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return components.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.reuseIdentifier, for: indexPath)
        let component = components[indexPath.row]
        cell.textLabel?.text = component.title
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let component = components[indexPath.row]
        let viewController = component.makeViewController()
        present(viewController, animated: true, completion: nil)
    }
}

// MARK: - Private extensions

private extension UITableViewCell {
    static var reuseIdentifier: String {
        return String(reflecting: self)
    }
}

