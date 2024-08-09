//
//  AddButton.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        HStack {
            Button(action: {
          
            }) {
                Image(system: .minus)
                    .foregroundColor(.white)
                    .padding([.leading, .vertical])
            }
            
            VStack {
                Text("0.1кг")
                    .font(AppFont.caption.font)
                    .foregroundColor(Color(asset: .whiteText))
                Text("~5,92")
                    .font(AppFont.caption.font)
                    .foregroundColor(Color(asset: .grayColor))
            }
            .padding(.horizontal)
            
            
            Button(action: {
               
            }) {
                Image(system: .plus)
                    .foregroundColor(.white)
                    .padding([.trailing, .vertical])
            }
        }
        .background(Color.green)
        .cornerRadius(50)
    }
}

#Preview {
    AddButton()
}
