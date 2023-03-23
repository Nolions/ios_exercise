//
//  BuildingListsAndNavigationApp.swift
//  BuildingListsAndNavigation
//
//  Created by nolions on 2023/3/23.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
