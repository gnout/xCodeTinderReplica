//
//  UserManager.swift
//  replica
//
//  Created by Stamp Dev on 23/7/21.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "", age: 0, jobTitle: "")
    @Published var matches: [Person] = []
    @Published var topPicks: [Person] = []
    @Published var cardPeople: [Person] = []
    
    init() {
        loadUser()
        loadMatches()
        loadTopPicks()
        loadCardPeople()
    }
    
    public func swipe(_ person: Person, _ direction: SwipeDirection) {
        cardPeople.removeLast()
    }
    
    public func superLike(_ person: Person) {
        cardPeople.removeLast()
    }
    
    private func loadUser() {
        self.currentUser = User.example
    }
    
    private func loadMatches() {
        self.matches = Person.examples
    }
    
    private func loadTopPicks() {
        self.topPicks = Person.examples.shuffled()
    }
    
    private func loadCardPeople() {
        self.cardPeople = Person.examples.shuffled()
    }
}

enum SwipeDirection {
    case like
    case nope
}
