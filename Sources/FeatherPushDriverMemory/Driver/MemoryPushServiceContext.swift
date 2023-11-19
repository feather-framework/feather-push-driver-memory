//
//  MemoryPushServiceContext.swift
//  FeatherPushDriverMemory
//
//  Created by Tibor Bodecs on 2020. 04. 28..
//

import FeatherService

struct MemoryPushServiceContext: ServiceContext {

    func createDriver() throws -> ServiceDriver {
        MemoryPushServiceDriver()
    }

}
