//
//  ProductCellForGrid.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import SwiftUI

struct ProductCellForGrid: View {
    
    @State var id: String
    @State var name: String
    @State var price: Float
    @State var rating: Float
    @State var image: String
    @State var bonus: String?
    @State var oldPrice: Float
    @State var sale: Int?
    @State var country: String?
    @State var flag: String?
    
    @State private var addInCart: Bool = false
    @State var selectedIndex = 0
    
    @ObservedObject var realmViewModel: RealmViewModel
    
    let options: [SegmentControlItem] = [
          SegmentControlItem(name: "Шт"),
          SegmentControlItem(name: "Кг")
    ]
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .topLeading) {
                VStack(alignment: .leading, spacing: 8) {
                    ZStack(alignment: .top) {
                        // Изображение товара
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                        
                        VStack {
                            Spacer()
                            HStack {
                                // Рейтинг и название товара
                                HStack(spacing: 4) {
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text(rating.description)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                if let sale = sale {
                                    Text("\(sale)%")
                                        .font(AppFont.title2.font)
                                        .fontWeight(.bold)
                                        .foregroundColor(.red)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                    Text(name)
                        .font(AppFont.body.font)
                        .foregroundColor(.black)
                    if let country = country {
                        if let flag = flag {
                            HStack(spacing: 0) {
                                Text(country)
                                    .font(AppFont.caption.font)
                                    .foregroundColor(.black)
                                Text(flag)
                            }
                        }
                    }
                    
                    if addInCart {
                        VStack {
                            CustomSegmentControl(selectedIndex: $selectedIndex, options: options)
                            AddButton()
                        }
                    } else {
                        // Цена и старая цена
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(price.formattedToTwoDecimalPlaces()) ₽/кг")
                                    .font(AppFont.body.font)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                Text(oldPrice.formattedToTwoDecimalPlaces())
                                    .font(AppFont.subLine.font)
                                    .foregroundColor(.gray)
                                    .strikethrough()
                            }
                            
                            Spacer()
                            
                            // Кнопка добавления в корзину
                            Button(action: {
                                // Действие на кнопку добавления в корзину
                                realmViewModel.addProductInCart(id: self.id, name: self.name, image: self.image, price: self.price, oldPrice: self.oldPrice, rating: self.rating)
                                addInCart = true
                            }) {
                                Image(asset: .cart)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.green)
                                    .cornerRadius(10)
                            }
                        }
                        .padding(.top, 8)
                    }
                    
  
                }
                .frame(height: 250)
                .padding()
                .background(Color(asset: .whiteText))
                .cornerRadius(15)
                .shadow(radius: 5)
                
                if let bonus = bonus {
                    Text(bonus)
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
            ActionList()
        }
        
        
    }
}

