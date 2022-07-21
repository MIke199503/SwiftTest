//
//  SettingView.swift
//  Swifu_test
//
//  Created by 蜡笔小新的动感超人Imac on 2022/4/24.
//

import SwiftUI

struct SettingView: View {
    @State private var searchtext = ""
    @State private var planeMode = false
    
    var body: some View {
        NavigationView{
            Form {
                
                //搜索
                Section {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("搜索",text: $searchtext)
                    }
                    .padding(.horizontal,5)

                }
                
                //用户信息
                Section{
                    HStack(spacing:20){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    Circle()
                            )
                            
                            Text("朱")
                                .foregroundColor(Color.white)
                                .font(.title2)
                                .bold()
                        }
                        .frame(width: 55, height: 55, alignment: .center)
                        
                        
                        VStack(alignment:.leading,spacing:5){
                            Text("朱桃禾")
                                .font(.title3)
                            Text("Apple ID、icloud、媒体与购买项目")
                                .font(.subheadline)
                        }

                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)

                    }
                    .frame(width: .infinity, height: 80, alignment: .center)
                }
                
                Section{
                    
                    //飞行模式
                    HStack(spacing:10){
                        ZStack {

                            Color.orange
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image(systemName: "airplane")
                                .foregroundColor(Color.white)
                        }
                        
                        
                        Toggle(isOn: $planeMode){
                         Text("飞行模式")
                        }
                        
                    }
                    
                    //无线
                    HStack(spacing:10){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image(systemName: "wifi")
                                .foregroundColor(Color.white)
                        }
                        
                        Text("无线局域网")
                        
                        Spacer()
                        Text("CMCC-04")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                        
                    }
                    
                    //蓝牙
                    HStack(spacing:10){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image( "蓝牙-1")
                                .resizable()
                                .aspectRatio(1, contentMode: .fill)
                                .frame(width: 25, height: 25, alignment: .center)
                                
                        }
                        
                        Text("蓝牙")
                        
                        Spacer()
                        Text("打开")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                        
                    }
                    
                    
                    //蜂窝网络
                    HStack(spacing:10){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .foregroundColor(.white)
                                
                        }
                        
                        Text("蜂窝网络")
                        
                        Spacer()
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                        
                    }
                    
                    
                    //个人网络
                    
                    //VPN
                    HStack(spacing:10){
                        ZStack {

                            Color.orange
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Text("VPN")
                                .font(.body)
                                .foregroundColor(Color.white)
                            
                        }
                        
                        
                        Toggle(isOn: $planeMode){
                         Text("VPN")
                        }
                        
                    }
                    
                }
                
                Section{
                    
                    //飞行模式
                    HStack(spacing:10){
                        ZStack {

                            Color.orange
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image(systemName: "airplane")
                                .foregroundColor(Color.white)
                        }
                        
                        
                        Toggle(isOn: $planeMode){
                         Text("飞行模式")
                        }
                        
                    }
                    
                    //无线
                    HStack(spacing:10){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image(systemName: "wifi")
                                .foregroundColor(Color.white)
                        }
                        
                        Text("无线局域网")
                        
                        Spacer()
                        Text("CMCC-04")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                        
                    }
                    
                    //蓝牙
                    HStack(spacing:10){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image( "蓝牙-1")
                                .resizable()
                                .aspectRatio(1, contentMode: .fill)
                                .frame(width: 25, height: 25, alignment: .center)
                                
                        }
                        
                        Text("蓝牙")
                        
                        Spacer()
                        Text("打开")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                        
                    }
                    
                    
                    //蜂窝网络
                    HStack(spacing:10){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .foregroundColor(.white)
                                
                        }
                        
                        Text("蜂窝网络")
                        
                        Spacer()
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                        
                    }
                    
                    
                    //个人网络
                    
                    //VPN
                    HStack(spacing:10){
                        ZStack {

                            Color.orange
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Text("VPN")
                                .font(.body)
                                .foregroundColor(Color.white)
                            
                        }
                        
                        
                        Toggle(isOn: $planeMode){
                         Text("VPN")
                        }
                        
                    }
                    
                }
                
                Section{
                    
                    //飞行模式
                    HStack(spacing:10){
                        ZStack {

                            Color.orange
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image(systemName: "airplane")
                                .foregroundColor(Color.white)
                        }
                        
                        
                        Toggle(isOn: $planeMode){
                         Text("飞行模式")
                        }
                        
                    }
                    
                    //无线
                    HStack(spacing:10){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image(systemName: "wifi")
                                .foregroundColor(Color.white)
                        }
                        
                        Text("无线局域网")
                        
                        Spacer()
                        Text("CMCC-04")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                        
                    }
                    
                    //蓝牙
                    HStack(spacing:10){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image( "蓝牙-1")
                                .resizable()
                                .aspectRatio(1, contentMode: .fill)
                                .frame(width: 25, height: 25, alignment: .center)
                                
                        }
                        
                        Text("蓝牙")
                        
                        Spacer()
                        Text("打开")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                        
                    }
                    
                    
                    //蜂窝网络
                    HStack(spacing:10){
                        ZStack {
                            Color.blue
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .foregroundColor(.white)
                                
                        }
                        
                        Text("蜂窝网络")
                        
                        Spacer()
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                        
                    }
                    
                    
                    //个人网络
                    
                    //VPN
                    HStack(spacing:10){
                        ZStack {

                            Color.orange
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                                .frame(width: 35, height: 35, alignment: .center)
                            
                            Text("VPN")
                                .font(.body)
                                .foregroundColor(Color.white)
                            
                        }
                        
                        
                        Toggle(isOn: $planeMode){
                         Text("VPN")
                        }
                        
                    }
                    
                }

            }
            .navigationTitle("设置")

            
        }
        .ignoresSafeArea(.all)
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            
    }
}
