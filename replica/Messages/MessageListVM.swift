//
//  MessageListVM.swift
//  replica
//
//  Created by Stamp Dev on 22/7/21.
//

import Foundation

class MessageListVM: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreviews()
    }
    
    func loadPreviews() {
        self.messagePreviews = [MessagePreview.example]
    }
}
