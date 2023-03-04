//
//  PaddingView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/02.
//

import SwiftUI

struct PaddingView2: View {
    var body: some View {
        VStack {
            Text("Swift the programming language")
                .font(.system(size: 25))
                .bold()
                .padding()
                .padding(.leading, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("""
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
""")
            .multilineTextAlignment(.leading)
            .padding(.leading, 35)
            .padding(.trailing, 20)
            .padding(.bottom, 30)
            .padding(.top)
        }
        .background(
            
        Rectangle()
            .foregroundColor(.white)
            .cornerRadius(25)
            .frame(maxWidth: .infinity)
            .padding()
            .shadow(radius: 15, x: 10, y: 10)
        )
        .padding()
        
            
    }
}

struct PaddingView2_Previews: PreviewProvider {
    static var previews: some View {
        PaddingView2()
    }
}
