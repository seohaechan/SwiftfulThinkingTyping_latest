//
//  AlertView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/26.
//

import SwiftUI

struct AlertView3: View {
    @State var alertButton: Bool = false
    var body: some View {
        VStack{
            Button("button one") {
                alertButton.toggle()
            }
        }
    }
}


struct AlertView3_Previews: PreviewProvider {
    static var previews: some View {
        AlertView3()
    }
}
