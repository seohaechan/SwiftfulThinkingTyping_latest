//
//  backgroundAndOverlayView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/01.
//

import SwiftUI

struct BackgroundAndOverlayView: View {
    var body: some/* some이 무슨 기능을 할까 */ View {
        
        // background와 overlay를 극한으로 활용해보기!!
        VStack{
            
            icon
                .padding()
            
            icon
                .padding()
            
            icon
            
            }
        
        // instagram logo
        // 삼성 로고
        // 구글 로고 
    }
}


extension BackgroundAndOverlayView {
    
    private var icon: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                LinearGradient(
                    colors: [.purple, .black],
                    startPoint: .topLeading,
                    endPoint: .bottomLeading)
            )
            .frame(width: 140, height: 140)
            .overlay(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.black, .purple]), startPoint: .topLeading, endPoint: .bottomLeading)
                    )
                    .frame(width: 50, height: 50)
                ,alignment: .bottomTrailing
            )
    }
    
}







struct BackgroundAndOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayView()
    }
}
