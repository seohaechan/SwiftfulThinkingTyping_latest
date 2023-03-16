//
//  Runners_11th_Study.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/09.
//

import SwiftUI

struct Runners_11th_Study: View {
    var body: some View {
        VStack{
            Text("im a text")
                .padding()
                .background(
                    Color.red
                )
            Text("im a text2")
                .background(
                    Color.red
                )
                .padding()
        }
    }
}

struct Runners_11th_Study_Previews: PreviewProvider {
    static var previews: some View {
        Runners_11th_Study()
    }
}
