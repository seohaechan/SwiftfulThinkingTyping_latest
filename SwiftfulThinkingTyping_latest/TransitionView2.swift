//
//  TransitionView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct TransitionView2: View {
    @State var button: Bool = false
    var body: some View {
        VStack{
            Button("button") {
                button.toggle()
            }
            Spacer()
            if button{
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .foregroundColor(.black)
                    .transition(AnyTransition.opacity.animation(.easeInOut))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionView2_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView2()
    }
}
