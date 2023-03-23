//
//  SheetView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/23.
//

import SwiftUI

struct SheetView: View {
    @State var button: Bool = false
    var body: some View {
        ZStack{
            Color.black
            VStack{
                Button {
                    button.toggle()
                } label: {
                    Text("click me")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white.cornerRadius(20))
                    
                }
                .sheet(isPresented: $button, content: {Text("hello").font(.largeTitle).bold()})

            }
        }
        .ignoresSafeArea()
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
