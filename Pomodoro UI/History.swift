//
//  History.swift
//  Pomodoro UI
//
//  Created by Vasiliy Shannikov on 10.12.2021.
//

import SwiftUI

struct History: View {
    var body: some View {
        VStack {
               Color.black
                .ignoresSafeArea(.all)
             
               Text("History")
                   .frame(width: 130, height: 22, alignment: .center)
                   .font(.system(size: 17, weight: .semibold))
//                   .padding(.bottom,26)
            
            Date(date: "21:11:21")
            HistoryView(sessionTime: "2")
            Date(date: "20:11:21")
            HistoryView(sessionTime: "3")
            Date(date: "19:11:21")
            HistoryView(sessionTime: "1")
          Spacer().frame( height: 10)
//           Spacer()
           }
           .edgesIgnoringSafeArea(.all)
           .foregroundColor(.white)
           .background(.black)
           .scaledToFill()
        
        
    }
   
}
struct HistoryView: View {
    
    var sessionTime = ""
    var body: some View {
        SettingsView(title: "Focus time", time: "25:00")
        SettingsView(title: "Break time", time: "05:00")
        SettingsView(title: "Sessions", time: sessionTime)
    }
}

struct Date: View {
    
    var date = ""
    var body: some View {
        Text(date)
            .frame(width: 358, height: 26, alignment: .leading)
            .font(.system(size: 20, weight: .semibold))
 //           .padding(.bottom,12)
            .padding(.top, 22)
    }
}
struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
