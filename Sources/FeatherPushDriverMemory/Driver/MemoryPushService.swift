//
//  MemoryPushService.swift
//  FeatherPushDriverMemory
//
//  Created by Tibor Bodecs on 2020. 04. 28..
//

import FeatherService
import FeatherPush

@dynamicMemberLookup
public struct MemoryPushService {

    let memoryPush: MemoryPush
    public let config: ServiceConfig

    subscript<T>(
        dynamicMember keyPath: KeyPath<MemoryPushServiceContext, T>
    ) -> T {
        let context = config.context as! MemoryPushServiceContext
        return context[keyPath: keyPath]
    }

    init(config: ServiceConfig) {
        self.memoryPush = .init()
        self.config = config
    }
}

public extension MemoryPushService {
    
    func getNotifications() async -> [(Notification, [Recipient])] {
        await memoryPush.getNotifications()
    }
}

extension MemoryPushService: PushService {

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
