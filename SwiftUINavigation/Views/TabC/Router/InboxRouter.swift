//
//  InboxRouter.swift
//  SwiftUINavigation
//
//  Created by Yamamoto Kyo on 2024/06/02.
//

import Foundation

protocol InboxNavigationProtocol: BaseRouter, Observable {
    func navigate(to destination: InboxDestination)
}

enum InboxDestination: String, RouterDestination {
    case chat

    var title: String {
        rawValue.capitalized
    }
}
