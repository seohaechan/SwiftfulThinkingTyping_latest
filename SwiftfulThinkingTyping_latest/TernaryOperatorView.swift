//
//  TernaryOperatorView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/07.
//

import SwiftUI

struct TernaryOperatorView: View {
    
    @State var booleanValue: Bool = false
    
    var body: some View {

        VStack {
            
            Text(booleanValue.description)
                .font(.largeTitle)
                .bold()
            
            Button {
                booleanValue ? booleanValue.toggle() : booleanValue.toggle()
                //이 부분이 삼항연산자가 사용된 부분이다.
            } label: {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 50)
                    .shadow(color: .blue, radius: 10, x: 5, y: 5)
                    .overlay(
                    Text("button")
                        .foregroundColor(.white)
                    )
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color.gray
        )
    }
}

struct TernaryOperatorView_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorView()
    }
}
