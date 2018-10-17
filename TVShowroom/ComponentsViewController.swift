//
//  ComponentsViewController.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

protocol ComponentsViewControllerDelegate: AnyObject {
    func componentsViewController(_ viewController: ComponentsViewController, didSelectComponent component: Component)
}

final class ComponentsViewController: UITableViewController {
    weak var delegate: ComponentsViewControllerDelegate?

    /// https://developer.apple.com/design/human-interface-guidelines/tvos/interface-elements/digit-entry-views/
    private let components: [Component] = [
        Alert(),
        Buttons(),
        Collection(),
        DigitEntry(),
        Cards(),
        CaptionButtons(),
        Monogram(),
        Poster(),
        TabBar(),
        PageControl(),
        ProgressIndicators(),
        SegmentedControl(),
        Search()
    ]

    override func viewDidLoad() {
        super.viewDidLoad()





        tableView.remembersLastFocusedIndexPath = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.reuseIdentifier)
    }

    let button = UIButton()

    dsds



    



    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)


//
//
//        print(focusedView)
//        print(focusedItem)
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

    override func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        guard context.nextFocusedIndexPath != context.previouslyFocusedIndexPath else { return }
        guard let indexPath = context.nextFocusedIndexPath else { return }


    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let component = components[indexPath.row]
        delegate?.componentsViewController(self, didSelectComponent: component)
    }
}

// MARK: - Private extensions

private extension UITableViewCell {
    static var reuseIdentifier: String {
        return String(reflecting: self)
    }
}
