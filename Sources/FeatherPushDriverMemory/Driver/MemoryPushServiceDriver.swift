//
//  MemoryPushServiceDriver.swift
//  FeatherPushDriverMemory
//
//  Created by Tibor Bodecs on 2020. 04. 28..
//

import FeatherService

struct MemoryPushServiceDriver: ServiceDriver {

    func run(using config: ServiceConfig) throws -> Service {
        MemoryPushService(config: config)
    }
}
