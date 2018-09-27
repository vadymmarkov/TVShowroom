//
//  Alert.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

struct Alert: Component {
    var title = "Alert"

    func makeViewController() -> UIViewController {
        let title = "Buy Gone Girl for $14.99"
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)

        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("The \"OK\" button pressed.")
        }))

        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("The \"Cancel\" button pressed.")
        }))

        return alertController
    }
}
