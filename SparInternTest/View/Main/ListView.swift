//
//  ListView.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel: ProductsViewModel
    @ObservedObject var realmViewModel: RealmViewModel
    
    var body: some View {
        List(viewModel.productsArray, id: \.id) { product in
            ProductCellForList(id: product.id, name: product.name, price: product.price, rating: product.rating, image: product.image, bonus: product.bonus, oldPrice: product.oldPrice, sale: product.sale, country: product.country, flag: product.flagCountry, countReview: product.countReview, realmViewModel: realmViewModel)
               }
               .listStyle(PlainListStyle())
    }
}

