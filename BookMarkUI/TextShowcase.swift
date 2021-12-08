//
//  TextShowcase.swift
//  BookMarkUI
//
//  Created by Temirlan Idrissov on 07.12.2021.
//

import SwiftUI

struct TextShowcase: View {
    var body: some View {
//        plain
        markdown
    }
    
    var plain: some View {
        Text("Hello, World!")
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(.red)
            .lineSpacing(20)
            .multilineTextAlignment(.trailing)
    }
    
    var markdown: some View {
        VStack {
            Text("This is regular text.")
            Text("* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text.")
            Text("'Monospaced works too'")
            Text("Visit Apple: [click here](https://apple.com)")
        }
    }
}

struct TextShowcase_Previews: PreviewProvider {
    static var previews: some View {
        TextShowcase()
    }
}
