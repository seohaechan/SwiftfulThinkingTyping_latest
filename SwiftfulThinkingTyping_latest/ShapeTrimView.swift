//
//  ShapeTrimView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/02/22.
//

import SwiftUI

struct ShapeTrimView: View {
    var body: some View {
        VStack {
            Rectangle()
//                .trim(to: 0.4)
            .frame(width: 150, height: 150)
            
            Spacer(minLength: 0)
        
            
            Rectangle()
                .trim(from: 0.4)
                .frame(width: 150, height: 150)
                .padding()
            
            // from과 to를 동시에 쓰는 경우는 어떤 경우인가? 또, 어떤 상황이 되는가?
            
            Rectangle()
//                .trim(from: 0.4, to: 1)
                .frame(width: 150, height: 150)
                .padding()
                
        }
            
    }
}

struct ShapeTrimView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeTrimView()
    }
}
