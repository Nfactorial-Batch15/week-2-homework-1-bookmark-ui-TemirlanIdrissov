//
//  CustomButton.swift
//  BookMarkUI
//
//  Created by Temirlan Idrissov on 08.12.2021.
//

import SwiftUI

struct CustomButton: View {
    var tittle: String
    var colorBaground: Color
    var colorText: Color
    var body: some View {
        Button(action: {}) {
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .fill(colorBaground)
                    .frame(width: 358, height: 58)
                Text(tittle)
                    .foregroundColor(colorText)
                    .lineSpacing(50)
                    .font(.system(size: 16))
                    
                
            }
            .padding(.bottom, 50)
        }
    }
}
