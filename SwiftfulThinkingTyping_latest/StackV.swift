//
//  StackV.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/02.
//

import SwiftUI

struct StackV: View {
    var body: some View {

        VStack{
            Text("your number is :")
                .padding(.bottom, 10)
                .font(.system(size: 25, weight: .ultraLight, design: .default))
                .italic()
            
            Text("5")
                .font(.system(size: 30, weight: .heavy, design: .serif))
                .frame(width: 100, height: 100)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.gray, .black]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .shadow(radius: 15, x: 20, y: 15)
                    )
            
            
        }
        
        VStack {
            
            text
                
            ball
                .frame( alignment: .center)
                .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(uiColor: .systemGray), .black]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .overlay(
                        Text("1")
                            .foregroundColor(.white)
                    )
                    .shadow(color: Color(uiColor: .systemGray),radius: 5, x: 10, y: 5)
                    .frame(width: 30, height: 30 ),
                alignment: .bottomTrailing)
                
                
        }
        
        

    }
}

extension StackV {
    private var ball: some View {
        Text("5")
            .font(.system(size: 30, weight: .heavy, design: .serif))
            .frame(width: 100, height: 100)
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.gray, .black]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .shadow(radius: 15, x: 20, y: 15)
                )
        
    }
}

extension StackV {
    private var text: some View {
        
        Text("your number is :")
            .font(.system(size: 25, weight: .ultraLight, design: .default))
            .italic()
        
    }
}


struct StackV_Previews: PreviewProvider {
    static var previews: some View {
        StackV()
    }
}
