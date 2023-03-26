//
//  AlertView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct AlertView2: View {
    @State var showAlert: Bool = false
    @State var alertButton: Bool = false
    var body: some View {
        VStack{
            AlertButton2(alertButton: $alertButton)
            AlertButton(showAlert: $showAlert)
        }
    }
}

struct AlertButton: View {
    @Binding var showAlert: Bool
    var body: some View{
        VStack{
            Button {
                showAlert.toggle()
            } label: {
                Capsule()
                    .frame(width: 150, height: 70)
                    .foregroundColor(.black)
                    .overlay(Text("click me").bold().foregroundColor(.white))
                    
            }
            .alert(isPresented: $showAlert, content: {Alert(title: Text("alert"), dismissButton: .default(Text("default")))})
        }
    }
}
struct AlertButton2: View {
    @Binding var alertButton: Bool
    var body: some View {
        VStack {
            Button("click me") {
                alertButton.toggle()
            }
            .alert(isPresented: $alertButton, content: {Alert(title: Text("title"), primaryButton: .default(Text("default button")), secondaryButton: .default(Text("secendary button")))})
        }
    }
}

struct AlertView2_Previews: PreviewProvider {
    static var previews: some View {
        AlertView2()
    }
}
