//
//  AnimationView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/22.
//

import SwiftUI

struct AnimationView3: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack(spacing: 30){
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 150, height: isAnimated ? 300 : 150)
                .foregroundColor(isAnimated ? .red : .green)
                .rotationEffect(Angle(degrees: isAnimated ? 100 : 50))
                .offset(y: isAnimated ? -100 : -200)
            AnimationButton(isAnimated: $isAnimated)
        }
    }
}

struct AnimationButton: View {
    @Binding var isAnimated: Bool
    var body: some View {
        Button {
            withAnimation(Animation.default.delay(0.2)){
                isAnimated.toggle()
            }
        } label: {
            ZStack{
                Capsule()
                    .frame(width: 100, height: 50)
                    .foregroundColor(.black)
                Text("click me")
                    .foregroundColor(.white)
            }
        }

    }
}

struct AnimationView3_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView3()
    }
}
