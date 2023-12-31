//
//  FeatherPushDriverMemoryTests.swift
//  FeatherPushDriverMemoryTests
//
//  Created by Tibor Bodecs on 2023. 01. 16..
//

import Foundation
import XCTest
import FeatherService
import FeatherPush
import FeatherPushDriverMemory
import XCTFeatherPush

final class FeatherPushDriverMemoryTests: XCTestCase {

    func testMemoryDriverUsingTestSuite() async throws {
        do {
            let registry = ServiceRegistry()
            try await registry.add(MemoryPushServiceContext())
            
            try await registry.run()
            let push = try await registry.push()
            
            do {
                try await push.send(
                    notification: .init(
                        title: "title",
                        body: "body"
                    ),
                    to: [
                        .init(
                            token: "token",
                            platform: .android
                        )
                    ]
                )
                
                let memoryPush = push as! MemoryPushService
                let notifications = await memoryPush.getNotifications()
                print(notifications)
                XCTAssertFalse(notifications.isEmpty)
                
                // TODO: enable test suite
//                let suite = PushTestSuite(push)
//                try await suite.testAll()
                
                try await registry.shutdown()
            }
            catch {
                try await registry.shutdown()
                throw error
            }
        }
        catch {
            XCTFail("\(error)")
        }

    }

}
