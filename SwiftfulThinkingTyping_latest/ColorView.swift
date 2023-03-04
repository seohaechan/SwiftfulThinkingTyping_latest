//
//  ColorView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/02/22.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        VStack {
            Rectangle()
            // #colorLiteral이 작동하지 않음. indicator을 통해서 커스텀색을 지정했음.
                .fill(Color(hue: 0.636, saturation: 0.802, brightness: 0.784, opacity: 0.509))
                .frame(width: 150, height: 150)
            .cornerRadius(15)
            .padding()
            
            Rectangle()
                .fill(Color(uiColor: UIColor.systemBlue))
                .frame(width: 150, height: 150)
                .cornerRadius(15)
                .padding()
            
            Rectangle()
                .fill(Color(UIColor.secondarySystemBackground/* 이 색의 경우, 다크모드로 바꾸면 적절한 배경색으로 변함 */))
                .frame(width: 150, height: 150)
                .cornerRadius(15)
                .padding()
        }
        
        VStack{
            // Assets에 들어 있는 커스텀 컬러 이용하기
            // fill()은 왜 frame()보다 먼저 쓰여야 할까?
            // trim(), fill(), stroke() 간의 우선순위는 어떻게 될까?
            Rectangle()
                .fill(Color("CustomColor"))
                .frame(width: 150, height: 150)
                .cornerRadius(15)
            // 2/22일. Shadow부터 다시 하기
            
            
            
        }
            
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
