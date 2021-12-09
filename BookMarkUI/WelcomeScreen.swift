//
//  WelcomeScreen.swift
//  BookMarkUI
//
//  Created by Temirlan Idrissov on 07.12.2021.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack{
                imageForScreen
                textForScreen
                CustomButton(tittle: "Let's start collecting", colorBaground: Color.white, colorText: Color.black)
                
                

            }
        }
    }
    
    var imageForScreen: some View {
        Image("BG_Image")
            .resizable()
            .frame(width: 390, height: 614)
            .edgesIgnoringSafeArea(.top)
            .padding(.bottom, 6)
    }
    
    var textForScreen: some View {
        Text("Save all interesting links in one app")
            .frame(width: 358, height: 92, alignment: .leading)
            .foregroundColor(.white)
            .font(.system(size: 36, weight: .bold))
            .padding(.bottom, 24)
    }
    
    var button: some View {
        Button(action: {}){
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                    .frame(width: 358, height: 58)
                Text("Let’s start collecting")
                    .foregroundColor(.black)
                    .lineSpacing(50)
                    .font(.system(size: 16))
                    
                
            }
            .padding(.bottom, 50)
        }
    }
}


struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
