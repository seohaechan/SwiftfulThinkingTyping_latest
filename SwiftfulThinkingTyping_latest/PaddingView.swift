//
//  PaddingView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/02.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
        
        VStack(spacing: 0){
            Text("Let's learn about padding()!")
                .padding(.all, 20)
                .background(.red)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.gray)
                .overlay(
                Rectangle()
                    .stroke()
                    .frame(maxWidth: .infinity)
                )
            
            
            Text("With me!")
                .padding(.all, 20)
                .padding(.leading, 19)
                .padding(.trailing)
                .background(.red)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .background(.gray)
                .overlay(
                Rectangle()
                    .stroke()
                    .frame(maxWidth: .infinity)
                )
                
        }
    }
}

struct PaddingView_Previews: PreviewProvider {
    static var previews: some View {
        PaddingView()
    }
}
