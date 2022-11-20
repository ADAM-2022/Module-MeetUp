//
//  DateExtension.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import Foundation

extension Date {
    func getDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy.MM.dd"
        dateFormatter.locale = Locale(identifier: "ko")
        return dateFormatter.string(from: self).capitalized
    }
    
    func getMonthAndDayKor() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM월 dd일"
        dateFormatter.locale = Locale(identifier: "ko")
        return dateFormatter.string(from: self).capitalized
    }
    
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
    
    func getMonthAndDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM.dd"
        dateFormatter.locale = Locale(identifier: "ko")
        return dateFormatter.string(from: self).capitalized
    }
    
    func getDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        dateFormatter.locale = Locale(identifier: "ko")
        return dateFormatter.string(from: self).capitalized
    }
}
