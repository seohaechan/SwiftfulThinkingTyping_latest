//
//  BindingView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/07.
//

import SwiftUI

struct BindingView2: View {
    
    @State var backgroundColor: Color = .gray
    
    var body: some View {
        ChildView2(backgroundColor: $backgroundColor)
    }
}

struct ChildView2: View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            Button {
                if backgroundColor == .gray{
                    backgroundColor = .red
                }else if backgroundColor == .red{
                    backgroundColor = .blue
                }else{
                    backgroundColor = .red
                }
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 220, height: 120)
                    
                    Text("click me")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                }
            }

        }
    }
}

struct BindingView2_Previews: PreviewProvider {
    static var previews: some View {
        BindingView2()
    }
}
