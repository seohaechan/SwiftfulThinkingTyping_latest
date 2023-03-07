//
//  ScrollViewView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/06.
//

import SwiftUI

struct ScrollViewView: View {
    var body: some View {
        
        ScrollView{
            VStack {
                ForEach(1..<10){ index in
                    Rectangle()
                        .frame(height: 300)
                    text
                        .font(.title)
                        .background(.red)
                    
                }
            }
        }
        
    }
}

extension ScrollViewView {
    private var text: some View {
        Text("it is a scroll view")
    }
}

struct ScrollViewView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView()
    }
}
