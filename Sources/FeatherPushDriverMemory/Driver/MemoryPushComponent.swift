//
//  MemoryPushComponent.swift
//  FeatherPushDriverMemory
//
//  Created by Tibor Bodecs on 2020. 04. 28..
//

import FeatherComponent
import FeatherPush

@dynamicMemberLookup
public struct MemoryPushComponent {

    let memoryPush: MemoryPush
    public let config: ComponentConfig

    subscript<T>(
        dynamicMember keyPath: KeyPath<MemoryPushComponentContext, T>
    ) -> T {
        let context = config.context as! MemoryPushComponentContext
        return context[keyPath: keyPath]
    }

    init(config: ComponentConfig) {
        self.memoryPush = .init()
        self.config = config
    }
}

public extension MemoryPushComponent {
    
    func getNotifications() async -> [(Notification, [Recipient])] {
        await memoryPush.getNotifications()
    }
}

extension MemoryPushComponent: PushComponent {

    public func send(
        notification: Notification,
        to recipients: [Recipient]
    ) async throws {
        guard !recipients.isEmpty else {
            return
        }
        await memoryPush.add(notification, recipients)
    }
}
