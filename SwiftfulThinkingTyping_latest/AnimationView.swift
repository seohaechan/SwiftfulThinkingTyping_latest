//
//  AnimationView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/22.
//

import SwiftUI

struct AnimationView: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 200 : 100, height: isAnimated ? 200 : 100)
            
            Button() {
                withAnimation(.default){
                    isAnimated.toggle()

                }
            } label: {
                Text("button")
                    .foregroundColor(.red)
            }

        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
