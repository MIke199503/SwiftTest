//
//  SwiftUIView.swift
//  Swifu_test
//
//  Created by 蜡笔小新的动感超人Imac on 2022/4/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/
                        .font(.headline)
                        .bold()
                }.tag(1)
            CustomModel()
                .tabItem {
                    Text("Tab Label 2")
                        .font(.headline)
                        .bold()
                }.tag(2)
            Learning1()
                .tabItem {
                    Text("Tab Label 3")
                        .font(.headline)
                        .bold()
                }.tag(3)
            
            SettingView()
                .tabItem {
                    Text("Tab Label 4")
                        .font(.headline)
                        .bold()
                }.tag(4)
            
            CourseButtonTest()
                .tabItem {
                    Text("Tab Label 5")
                        .font(.headline)
                        .bold()
                }.tag(5)
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
