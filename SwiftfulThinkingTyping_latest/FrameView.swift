//
//  FrameView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/01.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        // foregroundColor와 background의 차이점을 알아보기
        VStack {
            Text("Frame is important!")
                .background(Color.red)
            .foregroundColor(Color.blue)
            
            Text("Frame is important!")
                .foregroundColor(.blue)
            
            //foregroundColor는 글씨의 색을 변경시켰다.
            //background는 frame의 색을 변경시켰다.
        }
        
        VStack{
            
            Text("text")
                .font(.title)
                .fontWeight(.heavy)
                .kerning(3)
                .foregroundColor(.white)
                .frame(width: 100, height: 40, alignment: .center)
                .background(Color.black)
                .frame(width: 200, alignment: .leading)
                .background(Color.gray)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .background(.yellow)
                .frame(maxHeight: .infinity, alignment: .topLeading)
                .background(.red)
            // minLength와 maxLength는? 어떻게 쓰일까?
            
            
        }
        
        VStack{
            
            Text("Frame is hard to understand")
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundColor(.white)
                .background(Color.black)
                .frame(width: 250, alignment: .leading)
                .background(Color.gray)
                .frame(maxWidth: .infinity, maxHeight: 200, alignment: .bottomTrailing)
                .background(.yellow)
                .frame(maxHeight: .infinity, alignment: .topLeading)
                .background(.red)
                
                
                
                
            
        }
        
        
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
