//
//  TransitionView4.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct TransitionView4: View {
    @State var button: Bool = false
    var body: some View {
        VStack{
            Button("button") {
                button.toggle()
            }
            Spacer()
            if button {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .overlay(Text("text").foregroundColor(.white).bold().font(.largeTitle))

//                    .transition(.move(edge: .bottom))
                    .transition(AnyTransition.scale.animation(.easeIn))
//                    .animation(.easeIn)
//                    .overlay(Text("text").foregroundColor(.white).bold().font(.largeTitle))
                
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionView4_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView4()
    }
}
