//
//  ActionList.swift
//  SparInternTest
//
//  Created by Владимир Иванов on 08.08.2024.
//

import SwiftUI

struct ActionList: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Button(action: {
                
            }) {
                Image(asset: .order)
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 16, height: 16)
                    .padding(8)
                
            }
            
            Button(action: {
                
            }) {
                Image(system: .like)
                    .foregroundColor(.gray)
                    .padding(8)
                
            }
            .padding(.bottom, 4)
        }
    }
}

#Preview {
    ActionList()
}
