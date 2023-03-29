//
//  AlertView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/26.
//

import SwiftUI

struct AlertView3: View {
    enum ErrorCase{
        case errorOne
        case errorTwo
        case errorThree
    }
    @State var alertButton: Bool = false
    var body: some View {
        VStack{
            Button("button one") {
                alertButton.toggle()
            }
            .alert(isPresented: $alertButton, content: {Alert(title: Text("title"), dismissButton: .cancel(Text("hello")))})
            
        }
    }
}


struct AlertView3_Previews: PreviewProvider {
    static var previews: some View {
        AlertView3()
    }
}
