//
//  MemoryPushComponentDriver.swift
//  FeatherPushDriverMemory
//
//  Created by Tibor Bodecs on 2020. 04. 28..
//

import FeatherComponent

struct MemoryPushComponentBuilder: ComponentBuilder {

    func build(using config: ComponentConfig) throws -> Component {
        MemoryPushComponent(config: config)
    }
}
