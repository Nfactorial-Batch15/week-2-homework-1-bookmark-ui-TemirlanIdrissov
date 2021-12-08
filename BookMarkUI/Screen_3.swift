//
//  Screen_3.swift
//  BookMarkUI
//
//  Created by Temirlan Idrissov on 08.12.2021.
//

import SwiftUI

struct Screen_3: View {
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
            Rectangle()
                .ignoresSafeArea()
                .opacity(0.25)
            
            VStack{
                Spacer()
//                ZStack{
//                    RoundedRectangle(cornerRadius: 20)
//
//                        .frame(width: 390, height: 362, alignment: .bottom)
//                        .edgesIgnoringSafeArea(.bottom)
//                        .foregroundColor(Color.white)
//                        .padding(.top, 70)
////                        .padding(.top, 428)
////                        .fill(Color.white)
//
//
//                    VStack{
//                        HStack{
//                            Spacer()
//                            Image("Vector")
//
//                                .resizable()
//                                .frame(width: 12.01, height: 12.01)
//                                .padding([.trailing],  22)
//                        }
//                        Text("Title")
//                            .frame(width: 358, height: 22, alignment: .leading)
//                            .font(.system(size: 17))
//                        TextField("Bookmark title", text: .constant(""))
//                            .frame(width: 358, height: 46)
//
//
////                            .padding([.leading, .trailing], 16)
//
//                        Text("Link")
//                            .frame(width: 358, height: 22, alignment: .leading)
//                            .font(.system(size: 17))
//                        TextField("Bookmark link (URL)", text: .constant(""))
//                            .frame(width: 358, height: 46)
//                        CustomButton(tittle: "Save", colorBaground: Color.black, colorText: Color.white)
//
//
//
//
//                    }
//                    .padding(.top, 56)
//
//                }
                ZStack{
                    Rectangle()
                        .edgesIgnoringSafeArea(.bottom)
                        .foregroundColor(Color.white)
                        .frame(height: 360)
                        .cornerRadius(19)
                    VStack{
                        HStack{
                            Spacer()
                            Image("Vector")
                            
                                .resizable()
                                .frame(width: 12.01, height: 12.01)
                                .padding([.trailing],  22)
                        }
                        Text("Title")
                            .frame(width: 358, height: 22, alignment: .leading)
                            .font(.system(size: 17))
                        TextField("Bookmark title", text: .constant(""))
                            .frame(width: 358, height: 46)
                        Text("Link")
                            .frame(width: 358, height: 22, alignment: .leading)
                            .font(.system(size: 17))
                        TextField("Bookmark link (URL)", text: .constant(""))
                            .frame(width: 358, height: 46)
                        CustomButton(tittle: "Save", colorBaground: Color.black, colorText: Color.white)
                        
                        
                    }
                        
                }
                
            }
            
            
            
        }
        
        
    }
}

struct Screen_3_Previews: PreviewProvider {
    static var previews: some View {
        Screen_3()
    }
}
