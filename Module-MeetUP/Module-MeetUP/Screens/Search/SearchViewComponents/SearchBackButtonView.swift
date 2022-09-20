//
//  SearchBackButtonView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/20.
//

import SwiftUI

struct SearchBackButtonView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        Button {
            self.mode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 12)
                .foregroundColor(.black)
        }

    }
}

struct SearchBackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBackButtonView()
    }
}
