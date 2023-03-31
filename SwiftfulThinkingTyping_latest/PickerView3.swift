//
//  PickerView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/31.
//

import SwiftUI

struct PickerView3: View {
    var body: some View {
        VStack{
            Picker("text picker",
                   selection: <#T##Binding<Hashable>#>,
                   content: {
                        Text("first")
                        Text("second")
            })
        }
    }
}

struct PickerView3_Previews: PreviewProvider {
    static var previews: some View {
        PickerView3()
    }
}
