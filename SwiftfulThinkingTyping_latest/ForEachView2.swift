//
//  ForEachView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/05.
//

import SwiftUI

struct ForEachView2: View {
    
    var stringArray: [String] = ["hello", "my", "name", "is", "haechan"]
    var stringArray2: [String] = ["first", "second", "third", "fourth", "fifth"]
    
    
    var body: some View {
        
//        VStack{
//            // 아래에는 indices말고 또 뭐가 들어갈 수 있을까?
////            ForEach(stringArray.indices) { index in
////
////                Text("\(stringArray[index])"+"\(index)")
////
////            }
//
//        }
        
        VStack {
            
            ForEach(stringArray2.indices) { index in
                Text("\(stringArray[index])" + " : \(index)")
            }
            
        }
        
        
    }
}

struct ForEachView2_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView2()
    }
}
