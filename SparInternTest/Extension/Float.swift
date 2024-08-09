//
//  Float.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 09.08.2024.
//

import Foundation

extension Float {
    // Метод для получения строки с двумя знаками после запятой
    func formattedToTwoDecimalPlaces() -> String {
        return String(format: "%.2f", self)
    }
}
