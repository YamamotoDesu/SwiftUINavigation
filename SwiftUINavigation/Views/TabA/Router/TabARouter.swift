//
//  TabARouter.swift
//  SwiftUINavigation
//
//  Created by Yamamoto Kyo on 2024/06/02.
//

import SwiftUI

@Observable class TabARouter: BaseRouter {
    enum Destination: String, RouterDestination, CaseIterable {
        case viewOne
        case viewTwo

        var title: String {
            return switch self {
            case .viewOne:
                "View One"
            case .viewTwo:
                "View Two"
            }
        }
    }

    @ObservationIgnored override var routerDestinationTypes: [any RouterDestination.Type] {
        return [Destination.self]
    }

    //MARK: - Public
    func navigate(to destination: Destination) {
        path.append(destination)
    }
}
