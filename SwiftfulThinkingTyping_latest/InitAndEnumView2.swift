//
//  InitAndEnumView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/04.
//

import SwiftUI

struct InitAndEnumView2: View {
    
    let color: Color
    let text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(color)
    }
}

struct InitAndEnumView2_Previews: PreviewProvider {
    static var previews: some View {
        InitAndEnumView2(color: .red, text: "apples")
    }
}

// 지금 init 구문이 없었음에도 알아서 초기화가 완료된 것을 볼 수 있음.
