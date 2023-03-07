//
//  ForEachView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/05.
//

import SwiftUI

struct ForEachView: View {
    var body: some View {
        
        VStack {
            ForEach(1..<5) { index in
                circle
            }
            
        }
    }
}

extension ForEachView {
    private var circle: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(.gray)
    }
}


struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
