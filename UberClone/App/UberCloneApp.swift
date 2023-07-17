//
//  UberCloneApp.swift
//  UberClone
//
//  Created by Alejandro Robles on 05/07/23.
//

import SwiftUI

@main
struct UberCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
