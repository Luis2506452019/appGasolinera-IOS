//
//  appGasolineraApp.swift
//  appGasolinera
//
//  Created by MacOsX on 10/25/23.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct appGasolineraApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var authenticationViewModel = AuthenticationViewModel()
    
    var body: some Scene {
        WindowGroup {
            if let _ = authenticationViewModel.user {
                MainView(authenticationViewModel: authenticationViewModel)
            } else {
                ContentView(authenticationViewModel: authenticationViewModel)
            }
        }
    }
}
