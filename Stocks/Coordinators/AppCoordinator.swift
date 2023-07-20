//
//  AppCoordinator.swift
//  Stocks
//
//  Created by Oguzhan Varsak on 20/07/2023.
//

import XCoordinator

enum AppRoute: Route {
    case home
}

class AppCoordinator: NavigationCoordinator<AppRoute> {
    init() {
        super.init(initialRoute: .home)
    }
    
    override func prepareTransition(for route: AppRoute) -> NavigationTransition {
        let coordinator = HomeTabCoordinator()
        return .push(coordinator, animation: .default)
    }
}
