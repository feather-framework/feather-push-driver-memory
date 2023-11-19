//
//  MemoryPush.swift
//  FeatherPushDriverMemory
//
//  Created by Tibor Bodecs on 19/11/2023.
//

import FeatherPush

final actor MemoryPush {
    
    var notifications: [(Notification, [Recipient])]
    
    init() {
        self.notifications = []
    }
    
    func getNotifications() -> [(Notification, [Recipient])] {
        notifications
    }

    func add(_ notification: Notification, _ recipients: [Recipient]) {
        notifications.append((notification, recipients))
    }
}

