//
//  MemoryPushServiceContext.swift
//  FeatherPushDriverMemory
//
//  Created by Tibor Bodecs on 2020. 04. 28..
//

import FeatherService

public struct MemoryPushServiceContext: ServiceContext {
    
    public init() {}

    public func createDriver() throws -> ServiceDriver {
        MemoryPushServiceDriver()
    }

}
