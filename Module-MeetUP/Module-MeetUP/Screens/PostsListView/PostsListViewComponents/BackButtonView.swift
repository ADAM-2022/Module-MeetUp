//
//  BackButtonView.swift
//  Module-MeetUP
//
//  Created by 한택환 on 2022/09/18.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        Button {
            self.mode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .font(.title3)
                .foregroundColor(.black)
        }

    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
    }
}
