//
//  WatchlistCoordinator.swift
//  Stocks
//
//  Created by Oguzhan Varsak on 20/07/2023.
//

import XCoordinator

enum WatchlistRoute: Route {
    case watchlist
}

class WatchlistCoordinator: NavigationCoordinator<WatchlistRoute> {
    init() {
        super.init(initialRoute: .watchlist)
    }
    
    override func prepareTransition(for route: WatchlistRoute) -> NavigationTransition {
        switch route {
        case .watchlist:
            let viewController = HomeViewController()
            return .push(viewController)
    }
}
