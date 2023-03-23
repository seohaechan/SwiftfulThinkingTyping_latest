//
//  AnimationCurves2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/22.
//

import SwiftUI

struct AnimationCurves2: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 300)
                .frame(width: 300, height: 300)
                .animation(Animation.spring(response: 0.5 , dampingFraction: 0.7, blendDuration: 1.0).repeatCount(0, autoreverses: true))
            
            AnimationButton2(isAnimated: $isAnimated)
        }
    }
}

struct AnimationButton2: View {
    @Binding var isAnimated: Bool
    var body: some View {
        Button {
            isAnimated.toggle()
        } label: {
            ZStack{
                Capsule()
                    .frame(width: 100, height: 50)
                    .foregroundColor(Color(uiColor: .systemBlue))
                Text("click me")
                    .foregroundColor(.white)
                    .bold()
            }
        }

    }
}






















struct AnimationCurves2_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurves2()
    }
}
