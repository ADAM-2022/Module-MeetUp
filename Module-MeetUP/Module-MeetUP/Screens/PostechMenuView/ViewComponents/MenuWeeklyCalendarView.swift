//
//  MenuWeeklyCalendar.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/11/19.
//

import SwiftUI

struct MenuWeeklyCalendarView: View {
    //TODO: 후에 PostechMenuStateHolder.swift로 옮길 로직
    func getDateRange() -> [Date] {
        var dateRange: [Date] = []
        for addDate in 0..<7 {
            dateRange.append(Calendar.current.date(byAdding: .day, value: addDate, to: Date()) ?? Date())
        }
        return dateRange
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MenuWeeklyCalendarView_Previews: PreviewProvider {
    static var previews: some View {
        MenuWeeklyCalendarView()
    }
}
