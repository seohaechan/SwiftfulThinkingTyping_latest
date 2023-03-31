//
//  DatePickerView.swift
//  SwiftfulThinkingTyping_latest
//
//  Created by root on 2023/03/31.
//

import SwiftUI

struct DatePickerView: View {
    @State var date: Date = Date.now
    @State var yesterday: Date = Date.now - 1
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        NavigationStack {
            VStack {
                
                DatePicker("yesterday", selection: $yesterday, displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(.graphical)
                
                ZStack {
                    
                    Color(uiColor: .systemGray).opacity(0.2)
                        .frame(maxWidth: .infinity, maxHeight: 45)
                        .cornerRadius(15)
                    
                    DatePicker("today", selection: $date, displayedComponents: [.date])
                        .padding(.horizontal, 30)
                }
                .padding(.horizontal, 20)
            .navigationTitle(Text("today"))
                
                DatePicker("when did you born?", selection: $date, in: startingDate ... endingDate)
                    .datePickerStyle(.wheel)
                
            }
        }
        
        
        
        
        VStack{
            Text("Selected date is :")
            Text(dateFormatter.string(from: date))
                .font(.title)
        }
        
        
        
        
    }
        
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
