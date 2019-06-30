//
//  NetworkMock.swift
//  BTLBTests
//
//  Created by Martin Kim Dung-Pham on 25.08.18.
//  Copyright © 2018 elbedev. All rights reserved.
//

import XCTest
@testable import LibraryCore

class URLSessionDataTaskMock: URLSessionDataTask {
    override init() {}

    override func resume() {
        /// this thing could remember the stubbed values, but currently it does nothing
    }
}
class NetworkMock: Network {

    var data: Data?
    var response: URLResponse?
    var error: Error?
    var expectedRequests = [URLRequest: Data?]()

    func stub(for request: URLRequest = URLRequest(url: URL(string: "127.0.0.1")!), data: Data?, response: URLResponse?, error: Error?) {
        self.data = data
        self.response = response
        self.error = error
    }

    func expectRequest(_ request: URLRequest) {
        expectedRequests[request] = nil
    }

    func verifyRequests(test: XCTestCase, file: String = #file, line: Int = #line) throws {
        if expectedRequests.count > 0 {
            test.recordFailure(withDescription: "All expected requests must be sent.", inFile: file, atLine: line, expected: true)
        }
    }

    private func acceptRequest(_ request:URLRequest) {
        expectedRequests = expectedRequests.filter({ (expectedRequest, value) -> Bool in
            if request.url == expectedRequest.url &&
                request.httpMethod == expectedRequest.httpMethod,
                request.allHTTPHeaderFields == expectedRequest.allHTTPHeaderFields {
                return false
            }

            print("Received unexpected request: [\(request.httpMethod!)] \(request.url!.absoluteString) Headers: \(request.allHTTPHeaderFields!)")
            return false
        })
    }

    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        acceptRequest(request)
        completionHandler(data, response, error)
        return URLSessionDataTaskMock()
    }
}
