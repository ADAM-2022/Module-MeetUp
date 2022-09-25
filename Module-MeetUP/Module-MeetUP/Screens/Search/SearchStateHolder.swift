//
//  SearchStateHolder.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/21.
//

import SwiftUI

final class SearchStateHolder: ObservableObject {
    @Published var searchContent: String = ""
    @Published var searchHistorys: [String] = UserDefaults.standard.searchHistorys {
        didSet {
            UserDefaults.standard.searchHistorys = self.searchHistorys
        }
    }
    
    func initializeSearchContent() {
        searchContent = ""
    }
    
    func updateSearchHistorys() {
        if searchHistorys.count > 4 {
            searchHistorys.remove(at: 0)
            searchHistorys.append(searchContent)
        }
        else {
            searchHistorys.append(searchContent)
        }
    }
}
