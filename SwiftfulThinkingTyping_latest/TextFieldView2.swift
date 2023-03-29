//
//  TextFieldView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/29.
//

import SwiftUI

struct TextFieldView2: View {
    @State var textfieldString: String = ""
    var body: some View {
        NavigationStack{
            NavigationLink("typing area", destination: TypingArea(textfieldString: $textfieldString) )
        }
        .navigationTitle(Text("title").foregroundColor(.black))
        
    }
}

struct TypingArea: View {
    @Binding var textfieldString: String
    var body: some View {
        VStack{
            TextField("type anything in here...", text: $textfieldString)
//                .textFieldStyle(.automatic)
                .padding()
                .background(.gray.opacity(0.3))
                .foregroundColor(.purple)
                .font(.largeTitle)
        }
    }
}
struct TextFieldView2_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView2()
    }
}
