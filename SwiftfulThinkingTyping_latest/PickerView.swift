//
//  PickerView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/30.
//

import SwiftUI

struct PickerView: View {
    @State var selection: String = "1"
    var body: some View {
        VStack{
            Picker("picker", selection: $selection, content: {
                Text("picker")
                Text("picker2")
            })
            Picker(selection: $selection, content: {Text("contents")}, label: {Text("label")})
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
