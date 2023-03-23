//
//  AnimationCurveView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/22.
//

import SwiftUI

struct AnimationCurveView: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(isAnimated ? .red : .green)
                .frame(width: 150, height: 100)
                .animation(Animation.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 1.0).repeatCount(250, autoreverses: true))
                .offset(y: isAnimated ? 0 : -300)
            
            Button {
                isAnimated.toggle()
            } label: {
                ZStack{
                    Capsule()
                        .frame(width: 100, height: 50)
                    Text("click me")
                        .foregroundColor(.white)
                }
            }

        }
    }
}
























struct AnimationCurveView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurveView()
    }
}
