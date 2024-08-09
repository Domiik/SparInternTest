//
//  MainView.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import SwiftUI

struct MainView: View {
    
    @State private var isGridView: Bool = true
    @StateObject private var viewModel = ProductsViewModel()
    @StateObject private var realmViewModel = RealmViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                if isGridView {
                    GridView(viewModel: viewModel, realmViewModel: realmViewModel)
                        .transition(.opacity)
                } else {
                    ListView(viewModel: viewModel, realmViewModel: realmViewModel)
                        .transition(.opacity)
                }
            }
            .animation(.easeInOut, value: isGridView)
            .navigationBarItems(leading:
                                    Button(action: {
                isGridView.toggle()
            }) {
                Image(systemName: isGridView ? "square.grid.2x2.fill" : "square.grid.2x2")
                    .foregroundColor(.green)
            }
            )
        }
    }
}

#Preview {
    MainView()
}
