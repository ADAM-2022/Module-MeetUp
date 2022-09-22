//
//  SearchStateHolder.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/21.
//

import SwiftUI

final class SearchStateHolder: ObservableObject {
    @Published var searchContent: String = ""
    @Published var searchHistorys: [String] = []
}
