//
//  AppStorage.swift
//  BookMarkUINewEdition
//
//  Created by Temirlan Idrissov on 03.01.2022.
//

import Foundation
import SwiftUI

class Storage {
    @AppDataStorage(key: "link_models", defaultValue: [])
    static var linkModels: [LinkModel]
}

@propertyWrapper
struct AppDataStorage<T: Codable> {
    private let key: String
    private let defaultValue: T // Generic
    
    init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T { // generic
        get {
            guard let data = UserDefaults.standard.object(forKey: key) as? Data else {
                return defaultValue
            }
            let value = try? JSONDecoder().decode(T.self, from: data)
            return value ?? defaultValue
        }
        set {
            let data = try? JSONEncoder().encode(newValue)
            UserDefaults.standard.set(data, forKey: key)
        }
    }
}
