//
//  TransportationView‎.swift
//  SwiftUINavigation
//
//  Created by Yamamoto Kyo on 2024/06/02.
//

import SwiftUI

struct TransportationView: View {
    enum TransportationType: String, CaseIterable, Identifiable, Codable {
        case airplane
        case car
        case bus
        case tram
        case cablecar
        case ferry
        case bicycle
        case scooter
        case sailboat

        var id: String {
            return rawValue
        }
    }

    private let type: TransportationType

    // MARK: - Lifecycle
    init(type: TransportationType) {
        self.type = type
    }

    // MARK: - Views
    var body: some View {
        Image(systemName: type.rawValue)
            .font(.largeTitle)
    }
}

#Preview {
    TransportationView(type: .airplane)
}
