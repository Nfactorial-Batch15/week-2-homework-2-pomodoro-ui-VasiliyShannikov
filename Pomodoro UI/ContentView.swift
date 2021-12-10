//
//  ContentView.swift
//  Pomodoro UI
//
//  Created by Vasiliy Shannikov on 08.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image ("BG")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack {
                focus
                circle
                playStop
                Spacer()
               // tabViewButtons
            }
            FC()
        }
    }
    
    var tabViewButtons: some View {
        HStack {
            Image("home").padding(.trailing,110)
            
            Image("settings")
            
            
            Image("Group11").padding(.leading,110)
        }
    }
    
    var playStop: some View{
        HStack{
            ButtonView( image: "Play")
                .frame(width: 56, height: 56)
                .cornerRadius(100)
                .padding(.trailing,80)
            
            ButtonView(image: "Stop")
                .frame(width: 57, height: 56)
                .cornerRadius(100)
        }
        
    }
    var circle: some View {
        ZStack {
//            Image("Circle")
            Circle()
                      .stroke(Color.white, lineWidth: 6)
                      .opacity(0.3)
                      .frame(width: 250, height: 250)
                      .overlay(
                          Circle()
                              .trim(from: 0.0, to: 0.2)
                              .stroke(Color.white, lineWidth: 6)
                              .rotationEffect(.degrees(270))
                      )
                    
                     VStack {
                Text("25:00")
                    .frame(width: 200, height: 56)
                    .font(.system(size: 44, weight: .bold, design: .default))
                         
                Text("Focused on your task")
                    .frame(width: 200, height: 24)
                    .font(.system(size: 16, weight: .bold, design: .default))
            }
        }
        .frame(width: 248, height: 248)
        .foregroundColor(.white)
        .padding(.top, 52)
        .padding(.bottom, 60)
        
    }
    
    var focus: some View {
        ButtonView(title: "Focus category", image: "edit5")
            //.action: {print("hd")}
            .frame(width: 170, height: 36)
            .background(.gray)
           
            .foregroundColor(Color.white)
            .cornerRadius(24)
            .padding(.top, 100)
    }
}

struct FC:  View {
    
    var body: some View {
        LazyVStack {
            HStack {
                Text("Focus category")
                    .padding(.trailing,100)
                    .padding(.leading, 140)
                ButtonView(image: "Vector" )
            }
            .padding(.bottom,40)
            
            VStack {
                HStack {
                    ButtonView(title: "Work")
                        .frame(width: 172, height: 60)
                        .background(Color.gray.opacity (0.2))
                        .cornerRadius(16)
                    
                    ButtonView(title: "Study")
                        .frame(width: 172, height: 60)
                        . background(Color.gray.opacity (0.2))
                        .cornerRadius(16)
                }
                
                HStack {
                    ButtonView(title: "Workout")
                        .frame(width: 172, height: 60)
                        . background(Color.gray.opacity (0.2))
                        .cornerRadius(16)
                    
                    ButtonView(title: "Reading")
                        .frame(width: 172, height: 60)
                        . background(Color.gray.opacity (0.2))
                        .cornerRadius(16)
                }
                
                HStack {
                    ButtonView(title: "Meditations")
                        .frame(width: 172, height: 60)
                        . background(Color.gray.opacity (0.2))
                        .cornerRadius(16)
                       
                    
                    ButtonView(title: "Others")
                        .frame(width: 172, height: 60)
                        . background(Color.gray.opacity (0.2))
                        .cornerRadius(16)
                        
                }
            }
            .padding(.bottom,58)
//            gridView
//                .padding(.bottom,58)
        }
        .frame(width: 390, height: 362)
        .background(.white)
        .cornerRadius(40)
        .padding(.top, 500)
    }
}

struct ButtonView:  View {
    var action: () -> Void = {}
    var title = ""
    var image = ""
    var body: some View {
        Button (action: action){
            HStack {
                Image(image)
                Text(title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
