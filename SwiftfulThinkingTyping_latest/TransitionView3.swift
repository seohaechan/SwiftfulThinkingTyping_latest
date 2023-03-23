//
//  TransitionView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct TransitionView3: View {
    @State var button: Bool = false
    var body: some View {
        VStack{
            Button("button") {
                button.toggle()
            }
            Spacer()
            if button{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionView3_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView3()
    }
}
