//
//  ArrayExtension.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/10/03.
//
//MARK: https://stackoverflow.com/questions/63166706/how-to-store-nested-arrays-in-appstorage-for-swiftui 참고
import Foundation

extension Array: RawRepresentable where Element: Codable {
    public init?(rawValue: String) {
        guard let data = rawValue.data(using: .utf8),
              let result = try? JSONDecoder().decode([Element].self, from: data)
        else {
            return nil
        }
        self = result
    }
    
    public var rawValue: String {
        guard let data = try? JSONEncoder().encode(self),
              let result = String(data: data, encoding: .utf8)
        else {
            return "[]"
        }
        return result
    }
}
