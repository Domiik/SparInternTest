//
//  ProductRealm.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import RealmSwift
import Foundation

class ProductRealm: Object, ObjectKeyIdentifiable {
    @Persisted var id: String = ""
    @Persisted var name: String = ""
    @Persisted var image: String = ""
    @Persisted var price: Float = 0.0
    @Persisted var oldPrice: Float = 0.0
    @Persisted var rating: Float = 0.0
    
    override static func primaryKey() -> String? {
            return "id"
    }
}
