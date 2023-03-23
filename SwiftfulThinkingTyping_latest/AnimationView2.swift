//
//  AnimationView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/22.
//

import SwiftUI

struct AnimationView2: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 300)
                .frame(width: 200, height: 200)
            CapsuleButton(isAnimated: $isAnimated)
        }
    }
}

struct CapsuleButton: View {
    @Binding var isAnimated: Bool
    var body: some View{
                Button {
                    withAnimation(.default){
                        isAnimated.toggle()
                    }
                } label: {
                    ZStack {
                        Capsule()
                            .frame(width: 100, height: 50)
                            .foregroundColor(.black)
                            .shadow(radius: 5)
                        Text("click me")
                            .foregroundColor(.white)
                    }
            }
    }
}

struct AnimationView2_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView2()
    }
}
