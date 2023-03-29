//
//  TextFieldView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/29.
//

import SwiftUI

struct TextFieldView: View {
    @State var typeFieldString: String = ""
    var body: some View {
        TextField("type something in here...", text: $typeFieldString)
            .textFieldStyle(.roundedBorder)
            .padding()
            .background(Color.gray.opacity(0.3))
            .foregroundColor(.red)
            .font(.largeTitle)
            .bold()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
