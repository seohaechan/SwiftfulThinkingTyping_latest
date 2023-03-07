//
//  BindingView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/07.
//

import SwiftUI

struct BindingView: View {
    
    @State var buttonColor: Color = .gray
    
    
    var body: some View {
        
        VStack{
            buttonColor
                .ignoresSafeArea()
            
            ChildView(buttonColor: $buttonColor)
            
            roundedRectangleView
        }
        
    }
}

struct ChildView: View {
    
    @Binding var buttonColor: Color
    
    var body: some View {
        
        Button {
            buttonColor = .yellow
        } label: {
            Text("click me")
        }

        
    }
}

var roundedRectangleView: some View {
    RoundedRectangle(cornerRadius: 25)
        .frame(width: 200, height: 100)
        .foregroundColor(.green)
    
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
