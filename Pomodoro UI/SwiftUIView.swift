//
//  SwiftUIView.swift
//  Pomodoro UI
//
//  Created by Vasiliy Shannikov on 10.12.2021.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var selectedTab: Int = 1
    var body: some View {
        TabView(selection: $selectedTab) {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(1)
            
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "slider.vertical.3")
                }
                .tag(2)
            
            History()
                .tabItem {
                    Label("History", systemImage: "doc.fill")
                }
                .tag(3)
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
