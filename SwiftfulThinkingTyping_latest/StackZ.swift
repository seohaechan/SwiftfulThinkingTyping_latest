//
//  StackZ.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/02.
//

import SwiftUI

struct StackZ: View {
    var body: some View {
        ZStack(alignment: .trailing) {
            
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.purple, .orange]),
                        startPoint: .leading,
                        endPoint: .trailing)
                )
                .frame(width: 200, height: 300)
                .cornerRadius(15)
                .frame(width: 400, height: 400)
                .background(Color.gray)
                .cornerRadius(25)
                
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.orange, .purple]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(width: 80, height: 80)
                .cornerRadius(25)
                .frame(width: 30, height: 30)
                .overlay(Circle())
                .frame(width: 80, height: 80, alignment: .topLeading)
                                
        }
        
        //overlay 위에 overlay 쌓아 보기
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 200, height: 200)
                .overlay(
                    Circle()
                        .fill(.blue)
                        .overlay(
                        
                            Circle()
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [.red, .blue]),
                                        startPoint: .leading,
                                        endPoint: .trailing)
                                )
                                .frame(width: 80, height: 80)
                                .background(
                                    Circle()
                                        .fill(
                                            LinearGradient(
                                                gradient: Gradient(colors: [.blue, .red]),
                                                startPoint: .leading,
                                                endPoint: .trailing)
                                        )
                                        .frame(width: 120, height: 120)
                                        
                                )
                                
                        )
                    )
        }
    }
}

struct StackZ_Previews: PreviewProvider {
    static var previews: some View {
        StackZ()
    }
}
