//
//  AppRouter.swift
//  SwiftUINavigation
//
//  Created by Yamamoto Kyo on 2024/06/02.
//

import Foundation

@Observable class AppRouter {
    //MARK: - App states
    var presentedSheet: PresentedSheet?
    var selectedTab: ContentView.Tab = .a

    //MARK: - Routers
    var tabARouter = TabARouter()
    var tabBRouter = TabBRouter()
    var tabCRouter = TabCRouter()
    var tabDRouter = TabDRouter()
}
