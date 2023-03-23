//
//  AnimationAndWithAnimationView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/22.
//

import SwiftUI

struct AnimationAndWithAnimationView: View {
    @State var isAnimated: Bool = false
    @State var roundedRectangleColor: Color = .green
    @State var roundedRectangleShadowRadius: CGFloat = 5
    @State var buttonColor: Color = .gray
    @State var buttonText: String = "Text"
    @State var buttonShadowRadius: CGFloat = 7
    var body: some View {
        VStack(spacing: 30){
            RoundedRectangle(cornerRadius: 25)
                .fill(isAnimated ? .green : .red)
                .frame(width: 200, height: 100)
                .shadow(color: roundedRectangleColor,radius: roundedRectangleShadowRadius)
                .rotationEffect(Angle(degrees: 100))
                .animation(Animation.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 1.0).repeatCount(5, autoreverses: true))
                .offset(y: isAnimated ? 0 : 200)
            ButtonForEveryMoment(buttonColor: $buttonColor, buttonText: $buttonText, buttonShadowRadius: $buttonShadowRadius, isAnimated: $isAnimated)
        }
    }
}

struct ButtonForEveryMoment: View {
    @Binding var buttonColor: Color
    @Binding var buttonText: String
    @Binding var buttonShadowRadius: CGFloat
    @Binding var isAnimated: Bool
    var body: some View {
        ZStack{
            Button {
                isAnimated.toggle()
            } label: {
                ZStack{
                    Capsule()
                        .frame(width: 100, height: 50)
                        .foregroundColor(buttonColor)
                        .shadow(color: buttonColor, radius: buttonShadowRadius)
                    Text(buttonText)
                }
            }
        }
    }
}









struct AnimationAndWithAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationAndWithAnimationView()
    }
}
