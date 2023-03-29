//
//  ActionSheetView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/28.
//

import SwiftUI

struct ActionSheetView: View {
    @State var isActionSheet: Bool = false
    var body: some View {
        VStack {
            Button("click me") {
                isActionSheet.toggle()
                
            }
//            .actionSheet(isPresented: $isActionSheet, content: {ActionSheet(title: Text("title"))})
            
            Button("click me 2") {
                isActionSheet.toggle()
            }
//            .actionSheet(isPresented: $isActionSheet, content: {ActionSheet(title: Text("title"))})

        }
    }
}
    
    struct ActionSheetView_Previews: PreviewProvider {
        static var previews: some View {
            ActionSheetView()
        }
    }
