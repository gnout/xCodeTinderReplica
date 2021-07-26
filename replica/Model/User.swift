//
//  User.swift
//  replica
//
//  Created by Stamp Dev on 23/7/21.
//

import Foundation

struct User {
    var name: String
    var age: Int
    var jobTitle: String
    var goldSubscriber: Bool = false
    var profileTip: String = ""
    var imageURLS: [URL] = []
    
}

extension User {
    static let example = User(
        name: "Alex",
        age: 21,
        jobTitle: "Software Engineer",
        goldSubscriber: false,
        profileTip: "Photo Tip: Make waves with a beach photo and get more liked",
        imageURLS: [URL(string: "https://picsum.photos/400/310")!])
}
