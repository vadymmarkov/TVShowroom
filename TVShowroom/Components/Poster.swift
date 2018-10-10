//
//  Poster.swift
//  TVShowroom
//
//  Created by Vadym Markov on 09/10/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import TVUIKit

struct Poster: Component {
    let title = "Poster"

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        let view = viewController.view!
        let posters = [
            makePosterView(title: "Vadym Markov", subtitle: "iOS Developer"),
            makePosterView(title: "Eva Dufey", subtitle: "UI/UX Designer")
        ]

        let stackView = UIStackView(arrangedSubviews: posters)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 50
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

        return viewController
    }

    private func makePosterView(title: String, subtitle: String) -> TVPosterView {


        let posterViewA = TVPosterView(image: UIImage(color: .white))
        posterViewA.title = "Vadym Markov"
        posterViewA.subtitle = "iOS Developer"

        let posterViewB = TVPosterView(image: UIImage(color: .white))
        posterViewB.title = "Eva Dufey"
        posterViewB.subtitle = "UI/UX Designer"

        let stackView = UIStackView(arrangedSubviews: [posterViewA, posterViewB])


        return posterViewA
    }
}

private extension UIImage {
    convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}
