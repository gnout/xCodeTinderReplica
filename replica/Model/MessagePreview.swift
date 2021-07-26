//
//  MessageThread.swift
//  replica
//
//  Created by Stamp Dev on 21/7/21.
//

import Foundation

struct MessagePreview: Hashable {
    var person: Person
    var lastMessage: String
}

extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Hello there!")
}
