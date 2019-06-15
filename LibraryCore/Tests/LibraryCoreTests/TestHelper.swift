//
//  TestHelper.swift
//  BTLBTests
//
//  Created by Martin Kim Dung-Pham on 25.08.18.
//  Copyright © 2018 elbedev. All rights reserved.
//

import XCTest
@testable import LibraryCore

enum DataType {
    case html
    case json
    case xml
}

final class TestHelper {
    
    static var keychainMock: TestableKeychainProvider {
        return KeychainMock()
    }

    static var networkMock: NetworkMock {
        return NetworkMock()
    }

    static func accountStub() -> Account {
        return Account()
    }
}