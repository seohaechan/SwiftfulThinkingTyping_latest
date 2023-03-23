//
//  AnimationAndWithAnimationView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/22.
//

import SwiftUI

struct AnimationAndWithAnimationView2: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack(spacing: 40){
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 200)
                    .foregroundColor(isAnimated ? .white : .yellow)
                    .animation(Animation.easeIn.delay(1).repeatCount(200, autoreverses: true))
                    .shadow(color: .gray, radius: 10, x: 7, y: 7)
                    .overlay(Text("Bling!")
                        .font(.largeTitle)
                        .shadow(color: .gray, radius: 3, x: 7, y: 7))
                    
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 10)
                    .frame(width: 200, height: 200)
            }
//            .shadow(color: .gray, radius: 10, x: 7, y: 7)

            ButtonForEveryone(isAnimated: $isAnimated)
        }
    }
    
}

struct ButtonForEveryone: View {
    @Binding var isAnimated: Bool
    var body: some View {
        Button {
            isAnimated.toggle()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 50)
                    .foregroundColor(.black)
                    .shadow(color: .black, radius: 10, x: 7, y: 7)
                Text("Click me!")
                    .foregroundColor(.white)
            }
        }

    }
}























struct AnimationAndWithAnimationView2_Previews: PreviewProvider {
    static var previews: some View {
        AnimationAndWithAnimationView2()
    }
}
