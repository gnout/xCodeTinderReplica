//
//  Person.swift
//  replica
//
//  Created by Stamp Dev on 21/7/21.
//

import Foundation

struct Person: Hashable, Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageURLS: [URL]
    var bio: String
    var age: Int
}

extension Person {
    static let example = Person(name: "Alex",
                                imageURLS: [URL(string: "https://picsum.photos/400/300")!],
                                bio: "This is my bio",
                                age: 34)
    
    static let examples: [Person] = [
        Person(name: "Anne",
            imageURLS: [URL(string: "https://picsum.photos/400/300")!],
            bio: "Loud noises makes me happy",
            age: 22),
        Person(name: "Claire",
            imageURLS: [URL(string: "https://picsum.photos/400/301")!],
            bio: "Dive, dive, dive",
            age: 38),
        Person(name: "Princes Lea",
            imageURLS: [URL(string: "https://picsum.photos/400/302")!],
            bio: "Swim or die",
            age: 44),
        Person(name: "Olivia",
            imageURLS: [URL(string: "https://picsum.photos/400/303")!],
            bio: "I love hiking",
            age: 34),
        Person(name: "Sophia",
            imageURLS: [URL(string: "https://picsum.photos/400/304")!],
            bio: "I am really boring",
            age: 38),
    ]
}
