//
//  AppStateManager.swift
//  replica
//
//  Created by Stamp Dev on 20/7/21.
//

import Foundation

class AppStateManager: ObservableObject {
    @Published var selectedTab: TabBarButtonType = .fire
    @Published var showPersonsProfile: Person? = nil
    @Published var showPurchasePopup: Bool = false
    
    public func showPersonsProfile(_ person: Person) {
        self.showPersonsProfile = person
    }
    
    public func showPurchaseScreen() {
        self.showPurchasePopup = true
    }
}
