import UIKit
import TVUIKit

class Presentation {
    //-------------------------

    func fd() {


    dsds
        

UIButton().canBecomeFocused                             // true
UISegmentedControl(items: ["Item1"]).canBecomeFocused   // true
UILabel().canBecomeFocused                              // false
UIView().canBecomeFocused                               // false

    /// UIFocusEnvironment: an array of focus environments, ordered by priority
    override var preferredFocusEnvironments: [UIFocusEnvironment] {
        return [button]
    }

    // The view that is currently focused (optional)
    let focusedView = UIScreen.main.focusedView

    // The item that is currently focused (for the view controller)
    let focusedItem = UIFocusSystem(for: view)?.focusedItem

    // UIFocusEnvironment: marks this environment as needing a focus update
    setNeedsFocusUpdate()

    // UIFocusEnvironment: forces focus to be updated immediately
    updateFocusIfNeeded()


    }
    //-------------------------

    /// The index path of the cell that should be focused
    func collectionView(_ collectionView: UICollectionView,
                        canFocusItemAt indexPath: IndexPath) -> Bool {
        return true
    }

    /// Whether a change in focus should occur
    func collectionView(_ collectionView: UICollectionView,
                        shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool {
        context.nextFocusedIndexPath != IndexPath(item: 2, section: 0)
    }

    /// Whether the item at the specified index path can be focused
    func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> IndexPath? {
        return IndexPath(item: 1, section: 0)
    }


    // ------------------------



    /// Allow the view to receive focus
    override var canBecomeFocused: Bool {
        return true
    }

    /// Update the visual appearance of the view
    override func didUpdateFocus(in context: UIFocusUpdateContext,
                                 with coordinator: UIFocusAnimationCoordinator) {
        if context.nextFocusedView == self {
            coordinator.addCoordinatedAnimations({
                // Make sure focus animations match the system timing
                UIView.animate(withDuration: UIView.inheritedAnimationDuration) {
                    self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                }
            }, completion: nil)
        } else if context.previouslyFocusedView == self {
            coordinator.addCoordinatedAnimations({
                UIView.animate(withDuration: UIView.inheritedAnimationDuration) {
                    self.transform = .identity
                }
            }, completion: nil)
        }
    }

    // ------------------

    class View: UIView {

        func fd() {


            /// UIView.swift

            // buttonA -> buttonB
            let focusGuide = UIFocusGuide()
            addLayoutGuide(focusGuide)

            // Indicate where to transfer focus
            focusGuide.preferredFocusEnvironments = [buttonB]

            NSLayoutConstraint.activate([
                // Configure size to match origin view
                focusGuide.widthAnchor.constraint(equalTo: buttonA.widthAnchor),
                focusGuide.heightAnchor.constraint(equalTo: buttonA.heightAnchor),

                // Attach at the bottom of the origin view
                focusGuide.topAnchor.constraint(equalTo: buttonA.bottomAnchor),
                focusGuide.leadingAnchor.constraint(equalTo: buttonA.leadingAnchor)
            ])


        }
    }
}

func aa() {

    // Displays a focused appearance when any
    // of its superviews become focused
    let imageView = UIImageView()
    imageView.adjustsImageWhenAncestorFocused = true

    // Scrolls its text while any of its superviews become focused
    let label = UILabel()
    label.enablesMarqueeWhenAncestorFocused = true

    // Outputs a diagnosis of the specified item's focusability
    print(UIFocusDebugger.checkFocusability(for: view))
    // - ISSUE: This item returns NO from -canBecomeFocused.



    let searchController = UISearchController(
        searchResultsController: UIViewController()
    )
    searchController.searchBar.placeholder = "Enter keyword"

    let searchContainer = UISearchContainerViewController(
        searchController: searchController
    )

    let searchNavigationController = UINavigationController(
        rootViewController: searchContainer
    )


    let activityIndicatorView = UIActivityIndicatorView(style: .whiteLarge)
    activityIndicatorView.startAnimating()

    let progressView = UIProgressView()
    progressView.progress = 0.6

    let pageControl = UIPageControl()
    pageControl.numberOfPages = 4
    pageControl.currentPage = 2

    let segmentedControl = UISegmentedControl(
        items: ["Featured", "Top Charts"]
    )



    let posterViewA = TVPosterView(image: UIImage(color: .white))
    posterViewA.title = "Vadym Markov"
    posterViewA.subtitle = "iOS Developer"

    let posterViewB = TVPosterView(image: UIImage(color: .white))
    posterViewB.title = "Eva Dufey"
    posterViewB.subtitle = "UI/UX Designer"

    let stackView = UIStackView(arrangedSubviews: [posterViewA, posterViewB])



let monogramView = TVMonogramView()
monogramView.personNameComponents = PersonNameComponents()
monogramView.personNameComponents?.givenName = "Vadym"
monogramView.personNameComponents?.familyName = "Markov"
monogramView.title = "Vadym Markov"
monogramView.subtitle = "iOS Developer"


    let buttonView = TVCaptionButtonView()
    buttonView.motionDirection = .horizontal
    buttonView.contentText = "Caption Button"
    buttonView.title = "Button Title"
    buttonView.subtitle = "Button Subtitle"



let viewController = TVDigitEntryViewController()
viewController.titleText = "Enter passcode"
viewController.promptText = "Enter your five-digit passcode"
viewController.numberOfDigits = 5
viewController.isSecureDigitEntry = true
viewController.entryCompletionHandler = { entry in
    print(entry)
}


let title = "Buy Gone Girl for $14.99"
let alertController = UIAlertController(
    title: title, message: nil, preferredStyle: .alert
)

let actionA = UIAlertAction(title: "OK", style: .default) { _ in
    alertController.dismiss(animated: true, completion: nil)
    print("The \"OK\" button pressed.")
}
alertController.addAction(actionA)

let actionB = UIAlertAction(title: "Cancel", style: .cancel) { _ in
    alertController.dismiss(animated: true, completion: nil)
    print("The \"Cancel\" button pressed.")
}
alertController.addAction(actionB)



present(alertController, animated: true, completion: nil)
}
}

class CF: UIViewController {

override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
    super.traitCollectionDidChange(previousTraitCollection)

    switch traitCollection.userInterfaceStyle {
    case .light:
        print("light")
    case .dark:
        print("light")
    case .unspecified:
        print("unspecified")
    }

    func viewDidLoad() {


let box = UIView()
box.translatesAutoresizingMaskIntoConstraints = false
view.addSubview(box)

NSLayoutConstraint.activate([
    box.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
    box.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
    box.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
    box.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
])

    }
}

}
