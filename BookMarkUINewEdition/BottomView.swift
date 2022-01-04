//
//  BottomView.swift
//  BookMarkUINewEdition
//
//  Created by Temirlan Idrissov on 29.12.2021.
//

import SwiftUI

struct BottomView: View {
    @Binding var linkModels: [LinkModel]
    @Binding var showButtonView: Bool
    @State var title: String = ""
    @State var link: String = ""
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 0) {
                HStack(alignment: .center, spacing: 0) {
                    Spacer()
                    Image(systemName: "xmark")
                        .onTapGesture {
                            showButtonView = false
                        }
                }
                .padding([.top,.trailing], 22)
                VStack(alignment: .leading, spacing: 0) {
                    Text("Title")
                        .padding(.top, 22)
                    TextField("Bookmark title", text: $title)
                        .padding(.top, 11)
                        .padding(.bottom, 13)
                        .padding(.horizontal)
                        .background(Color(red: 0.948, green: 0.948, blue: 0.933))
                        .cornerRadius(12)
                        .padding(.top, 12)
                    
                    Text("Link")
                        .padding(.top, 22)
                    TextField("Bookmark link", text: $link)
                        .padding(.top, 11)
                        .padding(.bottom, 13)
                        .padding(.horizontal)
                        .background(Color(red: 0.948, green: 0.948, blue: 0.933))
                        .cornerRadius(12)
                        .padding(.top, 12)
                    
                    Button {
                        saveLink(title: title, link: link)
                        self.showButtonView = false
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.black)
                            Text("Save")
                                .foregroundColor(.white)
                        }
                        .frame(height: 58)
                    }
                    .padding(.top, 24)
                    .padding(.bottom, 34)
                    
                }
                .padding(.horizontal, 16)
                Spacer()
            }
        }
        .cornerRadius(20)
        .edgesIgnoringSafeArea(.all)
        .gesture(DragGesture(minimumDistance: 80, coordinateSpace: .local).onEnded({ value in
            if value.translation.height > 0 && value.translation.width < 100 && value.translation.width > -100 {
                showButtonView = false
            }
        }))
        
    }
    
    func saveLink(title: String, link: String) {
        let linkModel = LinkModel(title: title, linkURL: link)
        linkModels.append(linkModel)
        Storage.linkModels.append(linkModel)
    }
}
