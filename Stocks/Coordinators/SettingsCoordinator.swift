//
//  SettingsCoordinator.swift
//  Stocks
//
//  Created by Oguzhan Varsak on 20/07/2023.
//

import XCoordinator

enum SettingsRoute: Route {
    case settings
    case website
}

class SettingsCoordinator: NavigationCoordinator<SettingsRoute> {
    init() {
        super.init(initialRoute: .settings)
    }
    
    override func prepareTransition(for route: SettingsRoute) -> NavigationTransition {
        switch route {
        case .settings:
            let viewController = SettingsViewController()
            return .push(viewController)
        case .website:
            let url = URL(string: "https://quickbirdstudios.com/")!
            return Transition(presentables: [], animationInUse: nil) { _, _, completion in
                UIApplication.shared.open(url)
                completion?()
            }
        }
    }
}
