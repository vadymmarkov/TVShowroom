//
//  Cards.swift
//  TVShowroom
//
//  Created by Vadym Markov on 27/09/2018.
//  Copyright © 2018 Vadym Markov. All rights reserved.
//

import TVUIKit

struct Cards: Component {
    let title = "Cards"

    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        let view = viewController.view!
        let cards = [
            makeCardView(),
            makeCardView(),
            makeCardView()
        ]

        let stackView = UIStackView(arrangedSubviews: cards)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 50
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

        return viewController
    }

    private func makeCardView() -> TVCardView {
        let cardView = TVCardView()
        cardView.cardBackgroundColor = .gray
        cardView.translatesAutoresizingMaskIntoConstraints = false

        let headerView = TVLockupHeaderFooterView()
        headerView.showsOnlyWhenAncestorFocused = true
        headerView.titleLabel?.text = "Header title"
        headerView.subtitleLabel?.text = "Header subtitle"

        let footerView = TVLockupHeaderFooterView()
        footerView.showsOnlyWhenAncestorFocused = true
        footerView.titleLabel?.text = "Footer title"
        footerView.subtitleLabel?.text = "Footer subtitle"

        let label = UILabel()
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.enablesMarqueeWhenAncestorFocused = true
        label.text = "A card combines a header, footer and content view"

        cardView.contentView.addSubview(label)
        cardView.headerView = headerView
        cardView.footerView = footerView

        NSLayoutConstraint.activate([
            label.widthAnchor.constraint(equalTo: cardView.contentView.widthAnchor, multiplier: 0.8),
            label.centerXAnchor.constraint(equalTo: cardView.contentView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: cardView.contentView.centerYAnchor)
        ])

        return cardView
    }
}
