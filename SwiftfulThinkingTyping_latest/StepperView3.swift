//
//  StepperView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/04/03.
//

import SwiftUI

struct StepperView3: View {
    @State var strideableValue: Int = 0
    var body: some View {
        VStack{
            Stepper("stepper3", value: $strideableValue, in: 1 ... 5)
        }
    }
}

struct StepperView3_Previews: PreviewProvider {
    static var previews: some View {
        StepperView3()
    }
}
