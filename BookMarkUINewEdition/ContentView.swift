//
//  ContentView.swift
//  BookMarkUINewEdition
//
//  Created by Temirlan Idrissov on 29.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var showButtonView: Bool = false
    @State var linkModels: [LinkModel] = Storage.linkModels

    @Environment(\.openURL) var openURL
    var body: some View {
            NavigationView {
                ZStack(alignment: .bottom) {
                    if linkModels.isEmpty {
                        VStack {
                            Spacer()
                            Text("Save your first \n bookmark")
                                .font(.system(size: 36, weight: .bold))
                                .multilineTextAlignment(.center)
                            Spacer()
                            
                        }
                        .padding(.horizontal, 16)
                    } else {
                        List {
                            ForEach(linkModels) { linkModel in
                                HStack {
                                    Text("\(linkModel.title)")
                                    Spacer()
                                    Image("Group")
                                        .onTapGesture {
                                            print("Tapped")
                                            openURL(URL(string: linkModel.linkURL)!)
                                        }
                                    
                                }
                            }.onDelete(perform: self.deleteItem)
                                
                        }.listStyle(.inset)
                        
                            
                    }
                    
                    Button {
                        self.showButtonView = true
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .fill(.black)
                            Text("Add Bookmark")
                                .foregroundColor(.white)
                        }
                        .frame(height: 58)
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 42)
                    
                    if showButtonView {
                        BottomView(linkModels: $linkModels, showButtonView: $showButtonView)
                            .frame(height: 362)
                            .padding(.bottom, 0)
                    }
                    
                    

                }
                .navigationTitle(Text("Bookmark App"))
                .navigationBarTitleDisplayMode(.inline)
            }
        
    }
    
    private func deleteItem(at indexSet: IndexSet) {
        self.linkModels.remove(atOffsets: indexSet)
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

