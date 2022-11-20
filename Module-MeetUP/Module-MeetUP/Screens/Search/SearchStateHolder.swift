//
//  SearchStateHolder.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/21.
//

import SwiftUI

final class SearchStateHolder: ObservableObject {
    @Published var searchContent: String = ""
    @AppStorage("searchHistorys") var _searchHistorys: [String] = []
    
    var searchHistorys: [String] {
        get { return _searchHistorys }
        set {
            if newValue.count > 5 {
                _searchHistorys.remove(at: 0)
            }
        }
    }
    
    func updateSearchContent() {
        _searchHistorys.insert(searchContent, at: 0)
        searchHistorys = _searchHistorys
        searchContent = ""
    }
    
    func resetSearchHistorys() {
        _searchHistorys.removeAll()
    }

}
