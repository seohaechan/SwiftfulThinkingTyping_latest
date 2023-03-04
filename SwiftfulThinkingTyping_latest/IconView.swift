//
//  IconView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/02/28.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        Image(systemName: "square.and.arrow.up.trianglebadge.exclamationmark")
            .resizable()
            .renderingMode(.original)
            .frame(width: 300, height: 300)
        
        VStack{
            HStack {
                Image(systemName: "trash")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(.trailing, 20)
                
                Image(systemName: "square.and.arrow.up.trianglebadge.exclamationmark")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 80, height: 80)
                    .padding(.leading, 20.0)
                    
            }
            
            Image(systemName: "heart")
                .resizable()
            // 왜 resizable이 아래의 modifier들보다 먼저 와야 하는 걸까?
                .frame(width: 150, height: 150)
                .padding(.top, 40)
                .foregroundColor(.red)
                
        }
        
        VStack {
            // 그라디언트 넣어 보기 &
            Image(systemName: "moon")
                
                .resizable()
                .frame(width: 150, height: 150)
                
                
            
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: 150, height: 150)
                
                
            
        }
        
        VStack{
            
            Image(systemName: "heart.fill")
                .resizable()
//                .aspectRatio( contentMode: .fill)
//                .aspectRatio(contentMode: .fit)
//                .scaledToFit()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .foregroundColor(Color.blue)
//                .scaledToFit()
//                .scaledToFit()
                
            
        }
            
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
