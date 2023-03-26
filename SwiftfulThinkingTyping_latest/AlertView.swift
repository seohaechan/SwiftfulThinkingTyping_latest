//
//  AlertView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct AlertView: View {
    @State var showAlert: Bool = false
    var body: some View {
        Button("click here") {
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("This is title"), primaryButton: .destructive(Text("delete")), secondaryButton: .cancel())
        })
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
