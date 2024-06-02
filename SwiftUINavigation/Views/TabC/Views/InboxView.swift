//
//  InboxView.swift
//  SwiftUINavigation
//
//  Created by Yamamoto Kyo on 2024/06/02.
//

import SwiftUI

struct InboxView: View {
    typealias Destination = InboxDestination

    @Environment(\.inboxRouter) private var router

    // MARK: - Views
    var body: some View {
        VStack {
            Button {
                router.navigate(to: .chat)
            } label: {
                VStack {
                    Image(systemName: "tray")
                        .font(.extraLargeTitle)

                    Text("Go to chat")
                        .font(.body)
                }
                .foregroundStyle(Color.primary)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.systemGroupedBackground)
        .routerDestination(router: router,
                           destination: navigationDestination)
    }

    @ViewBuilder private func navigationDestination(_ destination: Destination) -> some View {
        switch destination {
        case .chat:
            ChatView()
        }
    }
}

#Preview {
    InboxView()
}
