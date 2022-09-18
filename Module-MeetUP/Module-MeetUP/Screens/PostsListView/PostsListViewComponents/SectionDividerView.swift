//
//  SectionDividerView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/18.
//

import SwiftUI

struct SectionDividerView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.gray)
            .frame(width: .infinity, height: 6)
            .padding(EdgeInsets(top: 5, leading: .zero, bottom: 32, trailing: .zero))
    }
}

struct SectionDividerView_Previews: PreviewProvider {
    static var previews: some View {
        SectionDividerView()
    }
}
