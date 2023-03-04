//
//  GradientView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/02/23.
//

import SwiftUI

struct GradientView: View {
    var body: some View {

        Rectangle()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [.blue, .red]),
                    startPoint: .leading,
                    endPoint: .trailing)
            )
            .cornerRadius(15)
            .frame(width: 300, height: 200)
        
        Rectangle()
            .fill(
                AngularGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .trailing,
                    angle: .degrees(50))
            )
            .cornerRadius(15)
            .frame(width:300, height: 200)
        
        Rectangle()
            .fill(
                RadialGradient(
                    colors: [.red, .blue],
                    center: .center,
                    startRadius: 5,
                    endRadius: 200)
            )
            .cornerRadius(15)
            .frame(width: 300, height: 200)
            

    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
