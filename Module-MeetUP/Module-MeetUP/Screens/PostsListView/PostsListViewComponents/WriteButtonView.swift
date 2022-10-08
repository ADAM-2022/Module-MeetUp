//
//  WriteButtonView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/10/08.
//

import SwiftUI

struct WriteButtonView: View {
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: "square.and.pencil")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 18)
                .foregroundColor(.gray)
        }

    }
}

struct WriteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        WriteButtonView()
    }
}
