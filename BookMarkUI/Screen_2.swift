//
//  Screen_2.swift
//  BookMarkUI
//
//  Created by Temirlan Idrissov on 08.12.2021.
//

import SwiftUI

struct Screen_2: View {
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            VStack{
                Text("Bookmark App")
                    .frame(width: 130, height: 22, alignment: .center)
                    .font(.system(size: 17, weight: .bold))
                    

                Spacer()
                Text("Save your first \nbookmark")
                    .font(.system(size: 36, weight: .bold))
                    .multilineTextAlignment( .center)
                    .frame(width: 358, height: 92 )
                    


                
                Spacer()
                CustomButton(tittle: "Add bookmark", colorBaground: Color.black, colorText: Color.white)
            }
        }
        
        
    }
}


struct Screen_2_Previews: PreviewProvider {
    static var previews: some View {
        Screen_2()
    }
}
