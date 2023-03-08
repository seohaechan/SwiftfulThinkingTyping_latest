//
//  BindingView4.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root  on 2023/03/07.
//

import SwiftUI

struct BindingView4: View {
    
    @State var text: String = "none"
    var body: some View {
        VStack {
            Text(text)
                .font(.largeTitle)
            ChildView4(text: $text)
        }
        
    }
}

struct ChildView4: View {
    @Binding var text: String
    var body: some View {
        Button("click me") {
            text = "oo"
        }
    }
}


struct BindingView4_Previews: PreviewProvider {
    static var previews: some View {
        BindingView4()
    }
}
