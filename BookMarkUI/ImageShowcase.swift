//
//  ImageShowcase.swift
//  BookMarkUI
//
//  Created by Temirlan Idrissov on 07.12.2021.
//

import SwiftUI

struct ImageShowcase: View {
    var body: some View {
        assetImage
    }
    
    var assetImage: some View {
        Image("BG_Image")
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .frame(width: 390, height: 614)
    }
}

struct ImageShowcase_Previews: PreviewProvider {
    static var previews: some View {
        ImageShowcase()
    }
}
