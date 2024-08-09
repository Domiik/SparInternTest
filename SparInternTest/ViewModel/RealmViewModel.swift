//
//  RealmViewModel.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import RealmSwift
import SwiftUI

final class RealmViewModel: ObservableObject {
    
    private var realm: Realm
    var product: Results<ProductRealm>
    
    init() {
        realm = try! Realm()
        product = realm.objects(ProductRealm.self)
    }
    
    func addProductInCart(id: String, name: String, image: String, price: Float, oldPrice: Float, rating: Float) {
        let product = ProductRealm()
        product.id = id
        product.name = name
        product.image = image
        product.price = price
        product.oldPrice = oldPrice
        product.rating = rating
        
        
        do {
            try realm.write {
                realm.create(ProductRealm.self, value: product, update: .modified)
            }
        } catch {
            // здесь можешь показать сообщение об ошибке пользователю
        }
    }
}

