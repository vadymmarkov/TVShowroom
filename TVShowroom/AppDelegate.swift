//
//  AppDelegate.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import UIKit

@UIApplicationMain

final class AppDelegate: UIResponder, UIApplicationDelegate {
    private var window: UIWindow?
    private lazy var splitViewController = UISplitViewController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        let componentsViewController = ComponentsViewController()
        componentsViewController.delegate = self

        splitViewController.title = "Components"
        splitViewController.viewControllers = [componentsViewController]

        let navigationController = UINavigationController(rootViewController: splitViewController)

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
}

// MARK: - ComponentsViewControllerDelegate

extension AppDelegate: ComponentsViewControllerDelegate {
    func componentsViewController(_ viewController: ComponentsViewController, didSelectComponent component: Component) {
        let viewController = component.makeViewController()
        splitViewController.showDetailViewController(viewController, sender: self)
    }
}
