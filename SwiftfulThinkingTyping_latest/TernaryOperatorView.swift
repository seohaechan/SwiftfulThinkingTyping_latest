//
//  TernaryOperatorView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/09.
//

import SwiftUI

struct TernaryOperatorView: View {
    @State var roundedRectangleColor: Color = .black
    var body: some View {
        VStack(spacing: 20){
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 300, height: 300)
                .foregroundColor(roundedRectangleColor)
            Button {
                if roundedRectangleColor == .black {
                    roundedRectangleColor = .red
                }else if roundedRectangleColor == .red {
                    roundedRectangleColor = .blue
                }else{
                    roundedRectangleColor = .red
                }
            } label: {
                Text("click me")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                    .bold()
            }
        }
    }
}

struct TernaryOperatorView_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorView()
    }
}
