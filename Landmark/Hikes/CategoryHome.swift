//
//  CategoryHome.swift
//  Landmark
//
//  Created by nolions on 2023/3/24.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var model: ModelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView{
            List {
                model.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height:200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(model.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(name: key, items: model.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(model)
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome().environmentObject(ModelData())
    }
}
