//
//  ContentView.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State var selectedTab  = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MainView()
                .tabItem {
                    Label("Поиск", systemImage: "magnifyingglass")
                }
                .tag(0)
            CartView()
                .tabItem {
                    Label("Корзина", systemImage: "heart")
                }
                .tag(1)
        }
        .accentColor(Color(asset: .greenColor))
    }
}

#Preview {
    ContentView()
}
