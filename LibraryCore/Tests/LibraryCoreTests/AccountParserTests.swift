//
//  AccountParserTests.swift
//  LibraryCoreTests
//
//  Created by Martin Kim Dung-Pham on 25.08.18.
//  Copyright © 2018 elbedev. All rights reserved.
//

import XCTest
@testable import LibraryCore

class AccountParserTests: XCTestCase {

    var account: FlamingoAccount!

    override func setUp() {
        super.setUp()
        let data = publicAccountResponseBody.data(using: .utf8)
        let parser = AccountParser()
        account = parser.account(data: data)
    }

    func testParseName() {
        XCTAssertEqual(account?.name, "")
    }

    func testParseIdentifier() {
        XCTAssertEqual(account?.identifier, "123456789")
    }

    func testParseEmail() {
        XCTAssertEqual(account?.email, "")
    }

    func testSingleCharge() {
        let dateComponents = DateComponents(calendar: Calendar(identifier: .gregorian), timeZone: TimeZone(identifier: "Europe/Berlin"), year: 2018, month: 9, day: 20)
        let expectedCharge = FlamingoCharge(reason: "Vormerkgebühr", date: dateComponents.date, debit: 2.0, credit: 1.0)
        XCTAssertEqual(account.charges, [expectedCharge])
    }
}
