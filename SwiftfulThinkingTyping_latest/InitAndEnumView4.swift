//
//  InitAndEnumView4.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/04.
//

/*
 입력에 따라 색이 바뀌는 신호등을 만들 거시에용.
 구성 프로퍼티 색, 사람 아이콘, 텍스트 색, 그림자 색
 */

import SwiftUI

struct InitAndEnumView4: View {
    
    let humanColor: Color
    let sign: trafficSign
    
    enum trafficSign: String {
        case red = "red"
        case orange = "orange"
        case green = "green"
    }
    
    init( sign: trafficSign) {
        self.sign = sign
        
        if sign == .red {
            humanColor = .red
        }else if sign == .orange {
            humanColor = .orange
        }else{
            humanColor = . green
        }
    }
    
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 240, height: 240)
                .shadow(radius: 20, x: 25, y: 25)
            
            Image(systemName: "figure.walk")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(humanColor)
                .scaledToFit()
                .frame(width: 150, height: 150)
                .shadow(color: humanColor, radius: 25)
        }
    }
}

struct InitAndEnumView4_Previews: PreviewProvider {
    static var previews: some View {
        InitAndEnumView4(sign: .orange)
    }
}
