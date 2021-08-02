//
//  Person.swift
//  replica
//
//  Created by Stamp Dev on 21/7/21.
//

import SwiftUI

struct Person: Hashable, Identifiable {
    var id = UUID().uuidString
    var name: String
    var imageURLS: [URL]
    var bio: String
    var distance: Int
    var bioLong: String
    var age: Int
    
    // Usd for card manipulation
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
}

extension Person {
    static let example = Person(name: "Alex",
                                imageURLS: [
                                    URL(string: "https://picsum.photos/400/300")!,
                                    URL(string: "https://picsum.photos/400/305")!,
                                    URL(string: "https://picsum.photos/400/306")!,
                                    URL(string: "https://picsum.photos/400/307")!,
                                    URL(string: "https://picsum.photos/400/308")!
                                ],
                                bio: "This is my bio and should be ong enough for the example",
                                distance: 20,
                                bioLong: "This is my bio and should be ong enough for the example",
                                age: 34)
    
    static let examples: [Person] = [
        Person(name: "Anne",
            imageURLS: [URL(string: "https://picsum.photos/400/300")!,
                        URL(string: "https://picsum.photos/400/305")!,
                        URL(string: "https://picsum.photos/400/306")!
            ],
            bio: "Loud noises makes me happy",
            distance: 25,
            bioLong: "Loud noises makes me happy",
            age: 22),
        Person(name: "Claire",
            imageURLS: [URL(string: "https://picsum.photos/400/301")!,
                        URL(string: "https://picsum.photos/400/307")!,
                        URL(string: "https://picsum.photos/400/308")!
            ],
            bio: "Dive, dive, dive",
            distance: 30,
            bioLong: "Dive, dive, dive",
            age: 38),
        Person(name: "Princes Lea",
            imageURLS: [URL(string: "https://picsum.photos/400/302")!,
                        URL(string: "https://picsum.photos/400/309")!,
                        URL(string: "https://picsum.photos/400/310")!

            ],
            bio: "Swim or die",
            distance: 33,
            bioLong: "Swim or die",
            age: 44),
        Person(name: "Olivia",
            imageURLS: [URL(string: "https://picsum.photos/400/303")!,
                        URL(string: "https://picsum.photos/400/311")!,
                        URL(string: "https://picsum.photos/400/312")!
            ],
            bio: "I love hiking",
            distance: 28,
            bioLong: "I love hiking",
            age: 34),
        Person(name: "Sophia",
            imageURLS: [URL(string: "https://picsum.photos/400/304")!,
                        URL(string: "https://picsum.photos/400/315")!,
                        URL(string: "https://picsum.photos/400/316")!
            ],
            bio: "I am really boring",
            distance: 14,
            bioLong: "I am really boring",
            age: 38),
    ]
}
