//
//  TextEditorView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/30.
//

import SwiftUI

struct TextEditorView: View {
    @State var textEditorText: String = "Type here to input any String here..."
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                
                HStack{
                    Image(systemName: "person.fill")
                        .resizable()
                        .font(.largeTitle)
                        .frame(width: 50, height: 50)
                        .padding(.leading, 30)
                    
                    Spacer()
                    
                    Text("Write you bio!")
                        .font(.largeTitle)
                        .bold()
                        .padding(.trailing, 70)
                }
                .padding(.top, 20)
                .padding(.bottom, 25)
                
                
                TextEditor(text: $textEditorText)
                    .cornerRadius(10)
                    .colorMultiply(Color(uiColor: .systemGray).opacity(0.3))
                    .padding()
                    .frame(height: 300)
                    .navigationTitle(Text("content"))
                    
                
                Button {
                    
                } label: {
                    ZStack {
                        Color.blue
                            .cornerRadius(15)
                            .frame(maxWidth: .infinity, maxHeight: 70)
                        Text("Save")
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                    }
                    .padding()
                    
                }
                
                Spacer()
            }
        }
    }
    
    struct TextEditorView_Previews: PreviewProvider {
        static var previews: some View {
            TextEditorView()
        }
    }
}
