//
//  IgonoreSafeAreaAndEdgesIgnoringSafeAreaView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/06.
//

import SwiftUI

struct IgonoreSafeAreaAndEdgesIgnoringSafeAreaView: View {
    var body: some View {
        
        
        
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all)
            
        
            
            
        
        
    }
}

struct IgonoreSafeAreaAndEdgesIgnoringSafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        IgonoreSafeAreaAndEdgesIgnoringSafeAreaView()
    }
}
