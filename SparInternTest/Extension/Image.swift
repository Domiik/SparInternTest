//
//  Image.swift
//  CherLiga
//
//  Created by Domiik on 26.04.2022.
//


import SwiftUI

extension Image {
    
    enum Assets: String, RawRepresentable {
        case cart
        case order
        case chips
        case chips_base
    }
    
    enum SystemAssets: String, RawRepresentable {
        case plus = "plus"
        case minus = "minus"
        case like = "suit.heart"
    }
    
    init(asset: Image.Assets) {
        self.init(asset.rawValue)
    }
    
    init(system: Image.SystemAssets){
        self.init(systemName: system.rawValue)
    }
}

