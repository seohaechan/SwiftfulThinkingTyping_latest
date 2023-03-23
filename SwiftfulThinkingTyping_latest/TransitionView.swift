//
//  TransitionView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct TransitionView: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("button") {
                withAnimation(Animation.easeIn.delay(3).repeatCount(15, autoreverses: true)) {
                    isAnimated.toggle()
                }
            }
                .padding(.top, 30)
            Spacer()
            if isAnimated {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .leading))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
