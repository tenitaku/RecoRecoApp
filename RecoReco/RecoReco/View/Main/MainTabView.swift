//
//  MainTabView.swift
//  RecoReco
//
//  Created by 福島匠 on 2022/04/13.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        TabView {
            HomeView()
            .tabItem {
                Text("Home")
                Image(systemName: "house")
            }
            
            SearchView()
            .tabItem {
                Text("Search")
                Image(systemName: "magnifyingglass")
            }
            
            SettingsView()
            .tabItem {
                Text("Setting")
                Image(systemName: "gearshape")
            }
        }
        .accentColor(.purple)
    }
}
