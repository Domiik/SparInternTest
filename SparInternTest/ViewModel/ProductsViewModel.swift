//
//  ProductsViewModel.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import Foundation


final class ProductsViewModel: ObservableObject {
    
    let productsArray = [
        Product(id: "1", name: "сыр Ламбер", price: 250.90, oldPrice: 199.0, rating: 4.1, countReview: 19, sale: nil, image: "1", bonus: "Удар по ценам", country: "Франция", flagCountry: "🇫🇷"),
        Product(id: "2", name: "Салат овощной", price: 1298.90, oldPrice: 199.0, rating: 4.1,countReview: 19, sale: nil, image: "2", bonus: "Новинки", country: "Франция", flagCountry: "🇫🇷"),
        Product(id: "3", name: "Энегретический напиток", price: 12.90, oldPrice: 199.0, rating: 4.1, countReview: 19, sale: nil, image: "3", bonus: nil, country: nil, flagCountry: nil),
        Product(id: "4", name: "Магно кео", price: 95699.90, oldPrice: 199.0, rating: 4.1, countReview: nil, sale: 19, image: "4", bonus: nil, country: nil, flagCountry: nil),
        Product(id: "5", name: "Огурцы", price: 99.90, oldPrice: 199.0, rating: 4.1, countReview: nil , sale: 19, image: "2", bonus: nil, country: nil, flagCountry: nil),
        Product(id: "6", name: "Ролл", price: 250.90, oldPrice: 199.0, rating: 4.1, countReview: nil, sale: 19, image: "1", bonus: "Новинки", country: nil, flagCountry: nil),
        Product(id: "7", name: "Макароны", price: 99.90, oldPrice: 199.0, rating: 4.1, countReview: nil, sale: 19, image: "2" , bonus: nil, country: nil, flagCountry: nil),
        Product(id: "8", name: "Масло Слобода", price: 12.90, oldPrice: 199.0, rating: 4.1, countReview: 19, sale: nil , image: "4", bonus:  "Новинки", country: "Франция", flagCountry: nil),
        Product(id: "9", name: "Салат овощной крабовый", price: 120.90, oldPrice: 199.0, rating: 4.1, countReview: 19, sale: nil, image: "3", bonus: "Удар по ценам", country: nil, flagCountry: nil),
        Product(id: "10", name: "Дорадо Охлажденная непотрошенная", price: 95699.90, oldPrice: 199.0, rating: 4.1, countReview: 19, sale: nil, image: "2", bonus: nil, country: nil, flagCountry: nil),
    ]
}
