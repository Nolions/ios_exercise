//
//  ContentView.swift
//  BuildingListsAndNavigation
//
//  Created by nolions on 2023/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
