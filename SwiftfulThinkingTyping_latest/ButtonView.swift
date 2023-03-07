//
//  ButtonView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/06.
//

import SwiftUI

struct ButtonView: View {
    
    @State var text: String = ""
    
    var body: some View {

        VStack {
            Text(text)
                .font(.title)
            
            Button("button") {
                self.text = "button one pressed"
            }
            
            Button {
                self.text = "button two pressed"
            } label: {
                Text("button two")
                    .padding()
                    .background(
                        Color.gray
                            .cornerRadius(25)
                    )
                    
            }

            
        }
        
        
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
