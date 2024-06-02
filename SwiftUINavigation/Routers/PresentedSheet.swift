//
//  PresentedSheet.swift
//  SwiftUINavigation
//
//  Created by Yamamoto Kyo on 2024/06/02.
//

import Foundation

enum PresentedSheet: Identifiable {
    case viewOne
    case transportation(type: TransportationView.TransportationType)

    var id: String {
        return switch self {
        case .viewOne:
            "View one"
        case .transportation:
            "Transportation"
        }
    }
}
