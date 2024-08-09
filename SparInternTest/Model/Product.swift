//
//  Product.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import Foundation

struct Product: Codable {
    let id: String
    let name: String
    let price: Float
    let oldPrice: Float
    
    let rating: Float
    let countReview: Int?
    
    let sale : Int?
    let image: String
    let bonus: String?

    let country: String?
    let flagCountry: String?
}
