//
//  GridView.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import SwiftUI

struct GridView: View {
    @ObservedObject var viewModel: ProductsViewModel
    @ObservedObject var realmViewModel: RealmViewModel
    
    var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: twoColumnGrid) {
                ForEach(viewModel.productsArray, id: \.id) { product in
                    ProductCellForGrid(id: product.id, name: product.name, price: product.price, rating: product.rating, image: product.image, bonus: product.bonus, oldPrice: product.oldPrice, sale: product.sale, country: product.country, flag: product.flagCountry, realmViewModel: realmViewModel)
                        .padding(.vertical, 4)
                }
            }
            .padding()
        }
    }
}

