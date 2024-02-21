//
//  MemoryPushComponentContext.swift
//  FeatherPushDriverMemory
//
//  Created by Tibor Bodecs on 2020. 04. 28..
//

import FeatherComponent

public struct MemoryPushComponentContext: ComponentContext {
    
    public init() {}

    public func make() throws -> ComponentBuilder {
        MemoryPushComponentBuilder()
    }

}
