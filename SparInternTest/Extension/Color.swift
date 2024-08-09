//
//  Color.swift
//  CherLiga
//
//  Created by Domiik on 26.04.2022.
//

import SwiftUI


extension Color {
    
    enum Assets: String, RawRepresentable {
        case textColor
        case cellColor
        case greenColor
        case grayColor
        case whiteText
    }
    
    init(asset: Color.Assets) {
        self.init(asset.rawValue)
    }
    
}

