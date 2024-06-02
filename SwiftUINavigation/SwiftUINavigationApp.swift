//
//  SwiftUINavigationApp.swift
//  SwiftUINavigation
//
//  Created by Yamamoto Kyo on 2024/06/02.
//

import SwiftUI

@main
struct SwiftUINavigationApp: App {
    @Bindable private var appRouter = AppRouter()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appRouter)
                .onReceive(DeeplinkManager.shared.userActivityPublisher, perform: handleDeeplink)
        }
    }


    // MARK - Deeplinks
    func handleDeeplink(_ type: DeeplinkManager.DeeplinkType) {
        switch type {
        case .chat:
            appRouter.presentedSheet = nil
            appRouter.selectedTab = .c
            appRouter.tabCRouter.navigate(to: .inbox)
            appRouter.tabCRouter.navigate(to: .chat)
        case .transportation(let type):
            appRouter.presentedSheet = .transportation(type: type)
        }
    }
}
