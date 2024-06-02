//
//  DeeplinkManager‎.swift
//  SwiftUINavigation
//
//  Created by Yamamoto Kyo on 2024/06/02.
//

import Foundation
import Combine

class DeeplinkManager {
    enum DeeplinkType {
        case chat
        case transportation(type: TransportationView.TransportationType)
    }

    static let shared = DeeplinkManager()

    let userActivityPublisher = PassthroughSubject<DeeplinkType, Never>()

    // MARK: - Lifecycle
    private init() {}
}
