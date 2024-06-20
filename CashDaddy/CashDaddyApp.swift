//
//  CashDaddyApp.swift
//  CashDaddy
//
//  Created by Ruchira  on 20/06/24.
//

import SwiftUI
import Firebase

@main
struct CashDaddyApp: App {
    
    // Register AppDelegate for Firebase setup
       @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            LaunchScreenView()
        }
    }
}
