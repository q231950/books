//
//  XCUIApplication+launchOptions.swift
//  BooksUITests
//
//  Created by Kim Dung-Pham on 20.12.20.
//  Copyright © 2020 Martin Kim Dung-Pham. All rights reserved.
//

import Foundation
import XCTest

/// Launch options to apply to the launch of an `XCUIApplication`
///
enum LaunchOption {
    /// This option tells the application to either playback stubbed network
    /// requests for the given test case or record a new stub if none exists yet.
    case stubbed(_ test: XCTestCase)
    /// This option tells the application to clean the keychain and any persisted data.
    case clean
}

extension XCUIApplication {

    /// Allows to apply options to the launch of an `XCUIApplication`.
    ///
    /// - Parameter options: the options to apply.
    func launch(options: [LaunchOption]) {

        for option in options {
            switch option {
            case .stubbed(let test):
                let processInfo = ProcessInfo()

                launchEnvironment["STUB_PATH"] = "\(processInfo.environment["PROJECT_DIR"] ?? "")/BooksUITests/Stubs"
                launchEnvironment["THE_STUBBORN_NETWORK_UI_TESTING"] = "YES"
                launchEnvironment["STUB_NAME"] = test.name
            case .clean:
                launchArguments.append("clean")
            }
        }

        launch()
    }
}
