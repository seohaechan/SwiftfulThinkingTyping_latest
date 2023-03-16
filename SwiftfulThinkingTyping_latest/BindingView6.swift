//
//  BindingView6.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/09.
//

import SwiftUI

struct BindingView6: View {
    @State var roundedRectangleColor: Color = .purple
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 300, height: 100)
                .foregroundColor(roundedRectangleColor)
            
            RoundedRectangleColorChangeButton(roundedRectangleColor: $roundedRectangleColor)
        }
    }
}

struct RoundedRectangleColorChangeButton: View {
    @Binding var roundedRectangleColor: Color
    @State var booleanValue: Bool = Bool()
    var body: some View {
        VStack{
            Button {
                booleanValue.toggle()
                
            } label: {
                Capsule()
                    .frame(width: 100, height: 70)
                    .overlay(
                    Text("click me")
                        .foregroundColor(.black)
                    )
            }

        }
    }
}

struct BindingView6_Previews: PreviewProvider {
    static var previews: some View {
        BindingView6()
    }
}
