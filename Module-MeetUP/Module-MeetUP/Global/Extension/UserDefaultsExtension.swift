//
//  UserDefaultsExtension.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/25.
//

import SwiftUI

extension UserDefaults {
    var searchHistorys: [String] {
        get {
            array(forKey: "isSearchHistorys") as? [String] ?? []
        }
        set {
            set(newValue, forKey: "isSearchHistorys")
        }
    }
}
