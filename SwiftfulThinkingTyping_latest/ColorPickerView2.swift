//
//  ColorPickerView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/31.
//

import SwiftUI

struct ColorPickerView2: View {
    @State var backgroundColor: Color = .white
    var body: some View {
        NavigationStack{
            ZStack {
                
                VStack(spacing: 150){
                    Image(systemName: "scribble.variable")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .foregroundColor(backgroundColor == .white ? .black : backgroundColor.opacity(0.3))
                    ZStack {
                        Color(uiColor: .systemGray).opacity(0.3)
                            .frame(maxWidth: .infinity, maxHeight: 47)
                            .cornerRadius(15)
                        ColorPicker("What is your favorite color?", selection: $backgroundColor, supportsOpacity: false)
                            .padding(.horizontal, 20)
                    }
                }
                .padding(.horizontal, 40)
                .navigationTitle(Text("Color Picker"))
            }
        }
    }
}

struct ColorPickerView2_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView2()
    }
}
