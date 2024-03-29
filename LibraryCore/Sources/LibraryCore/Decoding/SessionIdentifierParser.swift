//
//  SessionIdentifierParser.swift
//  Books
//
//  Created by Martin Kim Dung-Pham on 19.09.18.
//  Copyright © 2018 elbedev. All rights reserved.
//

import Foundation
import AEXML

enum ParseResult {
    case success(String)
    case failure
    case error(Error)
}

class SessionIdentifierParser {

    /// Parses a session identifier from the given xml data. Nil or invalid xml will result in an error, otherwise the success or error cases will occur.
    /// - Parameter data: The xml data to parse.
    func parseSessionIdentifier(data: Data?) -> ParseResult {
        guard let data = data else {
            return .error(NSError(domain: "\(self).parseAccessToken", code: 1, userInfo: [NSLocalizedDescriptionKey: "Failed to parse access token. No data to parse."]))
        }

        do {
            let xml = try AEXMLDocument.init(xml: data)
            let identifier = xml.root["soap:Body"]["CheckBorrowerResponse"]["CheckBorrowerResult"]["record"]["CheckBorrowerResult"]["sessionId"].string
            if identifier.count > 0 {
                return .success(identifier)
            } else {
                return .failure
            }
        } catch let err {
            return .error(err)
        }
    }
}
