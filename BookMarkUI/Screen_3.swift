//
//  Screen_3.swift
//  BookMarkUI
//
//  Created by Temirlan Idrissov on 08.12.2021.
//

import SwiftUI

struct Screen_3: View {
    var body: some View {
        ZStack {
            HStack{
                Text("Bookmark App")
                    .font(.system(size: 17, weight: .bold))
                    .padding(.bottom, 730)
            }
            Text("Save your first \nbookmark")
                .font(.system(size: 36, weight: .bold)).multilineTextAlignment(.center)
            
            diming
            bottomSheet
        }
        .edgesIgnoringSafeArea(.all)
        
    }
    
    var diming: some View {
        Color.black.opacity(0.2)
    }
    
    var bottomSheet: some View {
        VStack{
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                VStack {
                    HStack{
                        Spacer()
                        Image("Vector")
                    }
                    TextForField(text: "Title", textForField: "Bookmark title")
                   TextForField(text: "Link", textForField: "Bookmark link URL")
                    CustomButton(tittle: "Save", colorBaground: Color.black, colorText: Color.white)
                        .padding(.top, 24)
                    
                }
                .padding(16)
                
                
                
            }
            .frame(height:362)
            
        }
    }
    
}


struct TextForField: View {
    var text: String
    var textForField: String
    var body: some View {
        VStack {
            HStack {
                Text(text)
                Spacer()
            }
            TextField(textForField, text: .constant(""))
                .padding()
                .background(RoundedRectangle(cornerRadius: 16).fill(Color.gray).opacity(0.2))
        }
    }
}

struct Screen_3_Previews: PreviewProvider {
    static var previews: some View {
        Screen_3()
    }
}
