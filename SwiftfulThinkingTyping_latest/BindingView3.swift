//
//  BindingView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/07.
//

import SwiftUI

struct BindingView3: View {
    
    @State var squareColor: Color = .black
    
    var body: some View {
        VStack(spacing: 20){
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(squareColor)
            
            ChildView3(squareColor: $squareColor)
        }
    }
}


struct ChildView3: View {
    @Binding var squareColor: Color
    var body: some View {
        
        Button {
            squareColor = .purple
        } label: {
            Text("Just click me!")
                .foregroundColor(Color(uiColor: .systemBlue))
        }

        
        
    }
}

struct BindingView3_Previews: PreviewProvider {
    static var previews: some View {
        BindingView3()
    }
}
