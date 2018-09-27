//
//  DigitEntry.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import TVUIKit

struct DigitEntry: Component {
    var title = "Digit Entry View"

    func makeViewController() -> UIViewController {
        let viewController = TVDigitEntryViewController()
        viewController.titleText = "Enter passcode"
        viewController.promptText = "Enter your five-digit passcode"
        viewController.numberOfDigits = 5
        viewController.isSecureDigitEntry = true
        viewController.entryCompletionHandler = { [weak viewController] entry in
            print(entry)
            viewController?.clearEntry(animated: true)
        }

        return viewController
    }
}
