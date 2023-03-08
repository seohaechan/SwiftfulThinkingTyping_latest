//
//  BindingView4.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/07.
//

import SwiftUI

struct BindingView4: View {
    
    @State var textColor: Color = .black
    
    
    var body: some View {
        VStack {
            Text("color changeable text")
                .foregroundColor(textColor)
                .padding()
                .frame(height: 200)
                .font(.largeTitle)
            
            ChildView4(textColor: $textColor)
            
        }
        
    }
}

struct ChildView4: View {
    @Binding var textColor: Color
    
    
    var body: some View {
        
        Button {
            if textColor != .red {
                textColor = .red
            }else if textColor == .red {
                textColor = .blue
            }
        } label: {
            Text("just click me!")
                .foregroundColor(Color(uiColor: .white))
                .background(
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 190, height: 80)
                    .shadow(color: Color(uiColor: .systemBlue), radius: 10, x: 5, y: 10)
                    
                )
        }
        
    }
}


struct BindingView4_Previews: PreviewProvider {
    static var previews: some View {
        BindingView4()
    }
}
