//
//  SpacerView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/02.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack{
            
            HStack(alignment: .bottom ,spacing: 0){
                Spacer()
                square
                Spacer()
                    .frame(height: 20)
                    .foregroundColor(.orange)
                    .background(.orange)
                square
                Spacer()
            }
            .background(.red)
            
            
            HStack(alignment: .top, spacing: 0) {
                square
                square
            }
            
        }
    }
}

extension SpacerView {
    private var rectangle: some View {
        
            Rectangle()
                .frame(width: 200, height: 100)
            .foregroundColor(.red)
        
    }
    
}

extension SpacerView {
    private var square: some View {
        Rectangle()
            .frame(width: 150, height: 150)
            .foregroundColor(.blue)
    }
}


struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
