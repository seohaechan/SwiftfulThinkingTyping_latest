//
//  DatePickerView3.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/04/03.
//

import SwiftUI

struct DatePickerView3: View {
    @State var date: Date = Date()
    let startDay: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endDay: Date = Date()
    var body: some View {
        NavigationStack {
            VStack{
                DatePicker("datePicker", selection: $date, in: startDay ... endDay)
                    .datePickerStyle(.graphical)
            }
            .padding(.horizontal, 20)
            .navigationTitle("Date Picker")
        }
    }
}

struct DatePickerView3_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView3()
    }
}
