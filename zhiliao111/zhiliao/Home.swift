//
//  Home.swift
//  zhiliao
//
//  Created by 蜡笔小新的动感超人Imac on 2022/4/28.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        TabView {
            MainPageView()
                .tabItem {
                    VStack{
                        Image(systemName: "pencil.tip")
                            .resizable()
                            .frame(width: 10, height: 10, alignment: .center)
                        
                        Text("学习")
                            .font(.body)
                    }
                }
                .tag(1)
            Text("Tab Content 2")
                .tabItem {
                    VStack{
                        Image(systemName: "folder.fill")
                            .resizable()
                            .frame(width: 10, height: 10, alignment: .center)
                        
                        Text("选课")
                            .font(.body)
                    }
                }.tag(2)
            
            Text("Tab Content 3")
                .tabItem {
                    VStack{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10, alignment: .center)
                        
                        Text("我的")
                            .font(.body)
                    }
                }.tag(3)
            
            
            
        }
        .ignoresSafeArea(edges: .all)
    }
}

struct TabVieew_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
