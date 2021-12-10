//
//  Settings.swift
//  Pomodoro UI
//
//  Created by Vasiliy Shannikov on 09.12.2021.
//

import SwiftUI

struct Settings: View {
    var body: some View {
       
     VStack {
            Color.black
                .ignoresSafeArea()
         HStack {
             //var image1 = systemImage: "chevron.left"
             ButtonView ( image: "chevron.left")
                 .foregroundColor(.red)
                 
                 .frame(width: 90, height: 22, alignment: .leading)
                 .padding(.bottom,34)
             
             Text("Settings")
                 .frame(width: 140, height: 22, alignment: .center)
                 .font(.system(size: 17, weight: .bold))
                 .padding(.bottom,34)
             
             ButtonView( title: "Save")
                 .frame(width: 90, height: 22, alignment: .trailing)
                 .padding(.bottom,34)
         }
          
           
    
                SettingsView(title: "Focus time", time: "25:00")
                SettingsView(title: "Break time", time: "05:00")
                SettingsView(title: "Sessions", time: "2")
         
                Spacer().frame( height: 550)
        }
        .edgesIgnoringSafeArea(.all)
        .foregroundColor(.white)
        .background(.black)
        .scaledToFill()
        
     
    }
}
struct SettingsView : View {
    var title = ""
    var time = ""
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 17, weight: .bold))
                .frame(width: 304, height: 22,alignment: .leading)
                
            Text(time)
                .frame(width: 56, height: 22)
                .font(.system(size: 17, weight: .bold))
                .opacity(0.5)
        }
        .background(.black)
        .frame(width: 390, height: 44)
        
        Rectangle()
            .frame(width: 400, height: 1)
            .background(.white)
            .opacity(0.1)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
