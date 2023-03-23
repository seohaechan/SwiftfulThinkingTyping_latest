//
//  AnimationView5.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/22.
//

import SwiftUI

struct AnimationView5: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: isAnimated ? 500 : 150)
                .foregroundColor(isAnimated ? .red : .green)
                .rotationEffect(Angle(degrees: isAnimated ? 50 : 360))
                .offset(y: isAnimated ? 0 : -100)
            RoundedRectangleButton(isAnimated: $isAnimated)
        }
    }
}
// repeatForever()
struct RoundedRectangleButton: View {
    @Binding var isAnimated: Bool
    var body: some View {
        Button {
            withAnimation(Animation.default.repeatCount(5, autoreverses: true/* 이걸 키게 되면 단방향으로 작동 (true일 경우에는 왔다갔다를 함) */)){
                isAnimated.toggle()
            }
        } label: {
            ZStack{
                Capsule()
                    .frame(width: 100, height: 50)
                    .foregroundColor(.black)
                Text("click me")
            }
        }

    }
}


struct AnimationView5_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView5()
    }
}
