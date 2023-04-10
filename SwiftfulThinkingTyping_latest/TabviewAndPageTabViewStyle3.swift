//
//  TabviewAndPageTabViewStyle3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/04/05.
//

import SwiftUI

struct TabviewAndPageTabViewStyle3: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 15)
            RoundedRectangle(cornerRadius: 15)
            RoundedRectangle(cornerRadius: 15)

        }
        .tabViewStyle(.page)
    }
}

struct TabviewAndPageTabViewStyle3_Previews: PreviewProvider {
    static var previews: some View {
        TabviewAndPageTabViewStyle3()
    }
}
