//
//  TextFieldView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/29.
//

import SwiftUI

struct TextFieldView3: View {
    @State var textfieldString: String = ""
    @State var textThreeChar: Bool = false
    @State var dataArray: [String] = []

    var body: some View {
        VStack{
            TextField("type here anything else...", text: $textfieldString)
                .padding()
                .background(Color.purple.opacity(0.3).cornerRadius(10))
            
            Button {
                
            } label: {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .overlay(Text("click to save").foregroundColor(.white).bold())
            }

        }
        .padding()
    }
}

struct TextFieldView3_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView3()
    }
}
