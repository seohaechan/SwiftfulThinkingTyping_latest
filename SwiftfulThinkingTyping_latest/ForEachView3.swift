//
//  ForEachView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/05.
//

import SwiftUI

struct ForEachView3: View {
    
    let stringArray: [String] = ["하나","둘", "셋", "넷", "다섯"]
    
    
    var body: some View {
        
        VStack{
            ForEach(stringArray.indices) { index in
                Text("\(stringArray[index])" + ":" + " \(index)")
                    .frame(width: 200,alignment: .leading)
                    .background(.gray)
                
            }
        }
        
    }
}

struct ForEachView3_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView3()
    }
}
