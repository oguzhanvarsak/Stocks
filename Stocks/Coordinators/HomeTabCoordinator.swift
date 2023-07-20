//
//  HomeCoordinator.swift
//  Stocks
//
//  Created by Oguzhan Varsak on 20/07/2023.
//

import XCoordinator

enum HomeRoute: Route {
    case watchlist
    case settings
}

class HomeTabCoordinator: TabBarCoordinator<HomeRoute> {
    private let watchlistRouter: StrongRouter<WatchlistRoute>
    private let settingsRouter: StrongRouter<SettingsRoute>

    convenience init() {
        let watchlistCoordinator = WatchlistCoordinator()
        watchlistCoordinator.rootViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .recents, tag: 0)

        let settingsCoordinator = SettingsCoordinator()
        settingsCoordinator.rootViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)

        self.init(watchlistRouter: watchlistCoordinator.strongRouter,
                  settingsRouter: settingsCoordinator.strongRouter)
    }

    init(watchlistRouter: StrongRouter<WatchlistRoute>,
         settingsRouter: StrongRouter<SettingsRoute>) {
        self.watchlistRouter = watchlistRouter
        self.settingsRouter = settingsRouter

        super.init(tabs: [watchlistRouter, settingsRouter], select: watchlistRouter)
    }

    override func prepareTransition(for route: HomeRoute) -> TabBarTransition {
        switch route {
        case .watchlist:
            return .select(watchlistRouter)
        case .settings:
            return .select(settingsRouter)
        }
    }
}
