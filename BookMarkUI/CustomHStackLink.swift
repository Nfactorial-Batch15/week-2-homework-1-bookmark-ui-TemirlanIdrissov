//
//  CustomHStackLink.swift
//  BookMarkUI
//
//  Created by Temirlan Idrissov on 08.12.2021.
//

import SwiftUI

struct CustomHStackLink: View {
    var text: String
    
    var body: some View {
        HStack{
            Text(text)
//                frame(width: 326, height: 24)
                .padding()
            
            Spacer()
            Image("Group")
                .padding(.trailing, 19)
        }
        Image("Separator")
            .padding(.leading, 16)
    }
}
