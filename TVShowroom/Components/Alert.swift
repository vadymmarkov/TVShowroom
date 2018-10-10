//
//  Alert.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

struct Alert: Component {
    let title = "Alert"

    func makeViewController() -> UIViewController {
        return ViewController()
    }
}

// MARK: - Private

private final class ViewController: UIViewController {
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Buy", for: .normal)
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


        let title = "Buy Gone Girl for $14.99"
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)

        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            alertController.dismiss(animated: true, completion: nil)
            print("The \"OK\" button pressed.")
        }))

        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            alertController.dismiss(animated: true, completion: nil)
            print("The \"Cancel\" button pressed.")
        }))

        present(alertController, animated: true, completion: nil)


    }
}
