//
//  LinkModel.swift
//  BookMarkUINewEdition
//
//  Created by Temirlan Idrissov on 03.01.2022.
//

import SwiftUI

struct LinkModel: Codable, Identifiable {
    var id = UUID()
    var title: String
    var linkURL: String
}
