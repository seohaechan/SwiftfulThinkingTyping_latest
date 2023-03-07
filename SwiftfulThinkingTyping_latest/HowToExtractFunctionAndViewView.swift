//
//  HowToExtractFunctionAndViewView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/06.
//

import SwiftUI

struct HowToExtractFunctionAndViewView: View {
    
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            squareVIew
            Text(text)
                .foregroundColor(.black)
            
        }
        
    }
    
    //함수를 다음과 같이 아래쪽에 빼서 정리
    func changeText(text: String) {
        self.text = text
        emptyFunction()
    }
    
}


//다음과 같이 var name: some View를 통하여 뷰를 선언
var squareVIew: some View {
    
    RoundedRectangle(cornerRadius: 15)
        .frame(width: 300, height: 150)
        .foregroundColor(.green)
        
    
    
}


struct HowToExtractFunctionAndViewView_Previews: PreviewProvider {
    static var previews: some View {
        HowToExtractFunctionAndViewView()
    }
}


//전역 스코프에 있는 함수이기 때문에 로우레벨에 있는 프로퍼티에 접근하지 못함. 그러나 그 역은 반대임. 로우스코프에 있는 요소들은 전역스코프(상위 스코프)에 있는 요소에 접근 가능.
func emptyFunction() {
    
}
