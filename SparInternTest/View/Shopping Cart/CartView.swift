//
//  CartView.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import SwiftUI
import RealmSwift

struct CartView: View {
    
    // Realm
    @ObservedResults(ProductRealm.self) var productsList
    
    var body: some View {
        if productsList.isEmpty {
            Text("Корзина в данный момент пуста")
        } else {
            List(productsList, id: \.id) { product in
                ProductCellForList(id: product.id, name: product.name, price: product.price, rating: product.rating, image: product.image, oldPrice: product.oldPrice, realmViewModel: .init())
                   }
                   .listStyle(PlainListStyle())
        }
       
    }
}

#Preview {
    CartView()
}
