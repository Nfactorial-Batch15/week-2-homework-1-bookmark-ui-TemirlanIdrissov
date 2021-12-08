//
//  Screen_4.swift
//  BookMarkUI
//
//  Created by Temirlan Idrissov on 08.12.2021.
//

import SwiftUI

struct Screen_4: View {
    var body: some View {
        VStack{
            Text("List")
                .font(.system(size: 17, weight: .bold))
            VStack{
                CustomHStackLink(text: "Google")
                
                CustomHStackLink(text: "nFactorial School")
                
                CustomHStackLink(text: "NY Times")

                CustomHStackLink(text: "Bloomberg")
            }
            Spacer()
            CustomButton(tittle: "Add bookmark", colorBaground: Color.black, colorText: Color.white)
        }
        
            
    }
}

struct Screen_4_Previews: PreviewProvider {
    static var previews: some View {
        Screen_4()
    }
}
