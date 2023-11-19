//
//  ServiceContextFactory+MemoryPushService.swift
//  FeatherPushDriverMemory
//
//  Created by Tibor Bodecs on 2020. 04. 28..
//

import FeatherService

public extension ServiceContextFactory {

    static func memoryPush() -> Self {
        .init {
            MemoryPushServiceContext()
        }
    }
}
