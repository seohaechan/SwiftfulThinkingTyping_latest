//
//  AnimationView6.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/22.
//

import SwiftUI

struct AnimationView6: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack(spacing: 20){
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 200, height: 100)
                .foregroundColor(isAnimated ? .green : .red)
//                .animation(Animation.easeIn.repeatForever(autoreverses: true))
                .animation(Animation.easeIn.delay(0.5).repeatCount(250, autoreverses: true))
                .offset(y: isAnimated ? 0 : -300)
            
            Button {
                isAnimated.toggle()
            } label: {
                ZStack{
                    Rectangle()
                        .frame(width: 100, height: 50)
                        .shadow(radius: 9)
                        .cornerRadius(5)
                    Text("click me")
                        .foregroundColor(.white)
                }
            }

        }
    }
}

struct AnimationView6_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView6()
    }
}
