//
//  ConditionalStatementsView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/07.
//

import SwiftUI

struct ConditionalStatementsView: View {
    
    @State var booleanValue: Bool = true
    
    var body: some View {
        VStack{
            Text("\(booleanValue.description)")
                .font(.largeTitle)
                .bold()
            
            Text("\(String(booleanValue))")
                .font(.largeTitle)
                .bold()
            // String() 과 .description을 사용하는 게 같은 결과를 나타내는데, 각자 어떤 용도로 사용하는 게 좋을까?
            // String()은 모든 타입의 인스턴스를 String으로 변환
            // .description : A textual representation of this instance.
            
            Button("click me") {
                booleanValue.toggle()
                // .toggle()은 boolean 값의 true/false 상태를 바꾼다.
            }
            
        }
    }
}

struct ConditionalStatementsView_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalStatementsView()
    }
}
