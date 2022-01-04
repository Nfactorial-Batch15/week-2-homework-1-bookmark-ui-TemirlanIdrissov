//
//  WelcomeScreen.swift
//  BookMarkUINewEdition
//
//  Created by Temirlan Idrissov on 03.01.2022.
//

import SwiftUI


struct WelcomeScreen: View {
    @AppStorage("welcomeScreenShown")
    var welcomeScreenShown: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Image("image1")
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 530)
                    
                Text("Save all interesting links in one app")
                    .foregroundColor(.white)
                    .font(.system(size: 36, weight: .bold))
                    .frame(width: 358, height: 92, alignment: .leading)
                Spacer()
            }
            Button {
                print("jg")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.white)
                    Text("Let’s start collecting")
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .semibold))
                }
                .frame(height: 58)
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 34)
        }.onAppear(perform: {
//            UserDefaults.standard.welcomeScreenShown = true
        })
    }
}
