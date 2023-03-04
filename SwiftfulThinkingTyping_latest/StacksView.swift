//
//  StacksView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/02.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        VStack{
            ZStack {
                RoundedRectangle(cornerRadius: 58)
                    .fill(
                        AngularGradient(
                            colors: [Color(uiColor: .systemPurple),
                                .purple,.red],
                            center: .topLeading,
                            angle: .degrees(-180))
                    
                    )
                .frame(width: 200, height: 200)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.white, style: StrokeStyle(lineWidth: 14))
                        .frame(width: 140, height: 140)
                    
                    Circle()
                        .stroke(.white ,style: StrokeStyle(lineWidth: 14))
                        .frame(width: 60)
                        .overlay(
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 20, height: 30)
                            .frame(width: 100, height: 110, alignment: .topTrailing)
                        
                        )
                }
            }
            
        }
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}

