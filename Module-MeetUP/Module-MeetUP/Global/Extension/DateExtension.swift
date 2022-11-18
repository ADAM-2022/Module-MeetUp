//
//  DateExtension.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import Foundation

extension Date {
    func getDayOfWeekShort() -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "E"
            dateFormatter.locale = Locale(identifier: "ko")
            return dateFormatter.string(from: self).capitalized
        }
    
    func getDayOfWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "ko")
        return dateFormatter.string(from: self).capitalized
    }
}
