//
//  SheetView2.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/31.
//

import SwiftUI

struct SheetView2: View {
    @State var sheetButton: Bool = false
    var body: some View {
        NavigationStack {
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Button {
                        sheetButton.toggle()
                    } label: {
                        Color.white
                            .frame(width: 120, height: 65)
                            .cornerRadius(15)
                            .overlay(Text("click me").foregroundColor(.black))
                            .shadow(color: .white, radius: 15, x: 7, y: 7)
                    }
                    .sheet(isPresented: $sheetButton, content: {
                        Text("this is sheet page")
                            .cornerRadius(15)
                    })

                }
                .navigationTitle(Text("sheet page").foregroundColor(.white))
            }
        }
    }
}

struct SheetView2_Previews: PreviewProvider {
    static var previews: some View {
        SheetView2()
    }
}
