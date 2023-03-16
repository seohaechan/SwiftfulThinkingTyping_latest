//
//  BindingView5.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/08.
//

import SwiftUI

struct BindingView5: View {
    @State var roundedRectangleColor: Color = .black
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 200, height: 150)
                .foregroundColor(roundedRectangleColor)
            
            RectangleColorChangeButton(roundedRectangleColor: $roundedRectangleColor)
                
        }
    }
}

struct RectangleColorChangeButton: View {
    @Binding var roundedRectangleColor: Color
    var body: some View {
        VStack {
            Button {
                if roundedRectangleColor == .black {
                    roundedRectangleColor = .red
                }else if roundedRectangleColor == .red{
                    roundedRectangleColor = .blue
                }else{
                    roundedRectangleColor = .red
                }
            } label: {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 100, height: 40)
                    .overlay(
                    Text("click me!")
                        .foregroundColor(.white)
                    )
                    .foregroundColor(.blue)
            }

        }
    }
}

struct BindingView5_Previews: PreviewProvider {
    static var previews: some View {
        BindingView5()
    }
}
