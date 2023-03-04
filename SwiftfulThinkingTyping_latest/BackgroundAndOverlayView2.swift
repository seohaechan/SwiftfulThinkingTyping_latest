//
//  BackgroundAndOverlayView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/01.
//

import SwiftUI

struct BackgroundAndOverlayView2: View {
    var body: some View {
        VStack{
           
            
            
        }
    
        
    }
}


extension BackgroundAndOverlayView2 {
    
    private var letter: some View {
        
        RoundedRectangle(cornerRadius: 25)
        
    }
}

extension BackgroundAndOverlayView2{
    
    private var iconBackgroundRectangle: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(
                RadialGradient(colors: [.purple, .red, .orange], center: .center, startRadius: 5, endRadius: 100)
            )
            .frame(width: 150, height: 150)
        
    }
}



struct BackgroundAndOverlayView2_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayView2()
    }
}
