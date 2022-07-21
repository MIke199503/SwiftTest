//
//  MainPageView.swift
//  zhiliao
//
//  Created by 蜡笔小新的动感超人Imac on 2022/4/28.
import SwiftUI

struct MainPageView: View {
    var body: some View {
        ScrollView {
            ZStack {
//                Color.yellow.opacity(1)
//                    .ignoresSafeArea(edges: .top)
                
                
                VStack {
                    HStack {
                        Text("学习")
                            .font(.title)
                            .bold()
                            .padding(.horizontal,10)
                            .padding(.bottom,10)
                        Spacer()
                    }
                    
                    //已经购买的课程
                    HStack{
                        
                        Text("我已购买的课程")
                            .font(.subheadline)
                            .foregroundColor(.gray)
        //                    .bold()
                            .padding(.horizontal,10)
                        
                        
                        Spacer()
                        
                    }
                    
                    //购买课程视窗
                    BuyCoureView()

                    
                    //精品的课程
                    HStack{
                        
                        Text("精品课程")
                            .font(.title2)
                            .foregroundColor(.black)
        //                    .bold()
                            .padding(.horizontal,10)
                            .padding(.vertical,20)
                        
                        
                        Spacer()
                        
                    }

                    
            
                    PerfectCourseView()

                    //新手指南
                    HStack{
                        
                        Text("新手指南")
                            .font(.title2)
                            .foregroundColor(.black)
        //                    .bold()
                            .padding(.horizontal,10)
                            .padding(.vertical,20)
                        
                        Spacer()
                        
                    }
                    
                    
                    VStack(spacing:30){
                        
                        HStack(alignment:.top){
                            Color.purple
                                .frame(width: 50, height: 50, alignment: .center)
                                .padding(.horizontal,10)
                            
                            
                            VStack(alignment:.leading,spacing: 7) {
                                Text("Title:发布状态")
                                    .font(.title3)
                                    .fontWeight(Font.Weight.medium)
                                
                                Text("subheadline:信息补全:信息补全:信息补全:信息补全:信息补全:信息补全")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .fontWeight(Font.Weight.regular)
                                    .lineLimit(1)
                                    .frame(width: 200)
                                
                            }
                            
                            Spacer()

                        }
                        .frame(width: UIScreen.main.bounds.width - 20)
                        
                        HStack(alignment:.top){
                            Color.purple
                                .frame(width: 50, height: 50, alignment: .center)
                                .padding(.horizontal,10)
                            
                            
                            VStack(alignment:.leading,spacing: 7) {
                                Text("Title:发布状态")
                                    .font(.title3)
                                    .fontWeight(Font.Weight.medium)
                                
                                Text("subheadline:信息补全:信息补全:信息补全:信息补全:信息补全:信息补全")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .fontWeight(Font.Weight.regular)
                                    .lineLimit(1)
                                    .frame(width: 200)
                                
                            }
                            
                            Spacer()

                        }
                        .frame(width: UIScreen.main.bounds.width - 20)
                        
                        
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainPageView()
        }
    }
}

struct BuyCoureView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 20) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    ZStack {
                        VStack {
                            Image("课程2")
                                .resizable()
                                .scaledToFill()
                                
    //                            .opacity(0.5)
                            .cornerRadius(10)
                            Spacer()
                        }.frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.width/6, alignment: .center)
                        
                        VStack{
                            Spacer()
                            
                            ZStack {
                                Color.white.opacity(0.95)
                                    .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.width/5, alignment: .center )
                                    .cornerRadius(10)
                                
                                VStack{
                                    Text("Python基础语法")
                                        .font(.system(size: 15))
                                        .padding(.top,10)
                                    
                                    Button{
                                        
                                        
                                    }label: {
                                        Text("点击查看")
                                            .foregroundColor( .white)
                                            .font(.system(size: 15))
                                            .background(
                                                Color.blue
                                                    .frame(width: (UIScreen.main.bounds.width - 30)/3, height: 35, alignment: .center)
                                                    .cornerRadius(50)
                                                
                                            )
                                            .padding(.vertical,7)
                                    }
                                    
                                    
                                    
                                }
                            }
                            
                            
                        }
                    }.frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.width/1.9 , alignment: .center)
                }
            }.padding(.leading,10)
        }
    }
}

struct PerfectCourseView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 20) {
                ForEach(0..<5) { item in
                    ZStack {
                        ZStack {
                            
                       
                            
                            VStack {
                                Image("课程1")
                                    .resizable()
                                    .scaledToFit()
//                                    .frame(width: UIScreen.main.bounds.width - 50,height:150,alignment:.center)
                                    .cornerRadius(10)
                                
                                Spacer()
                            }
                        }.frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.width/1.9)
                        
                        
                        VStack{
                            Spacer()
                            
                            ZStack {
                                Color.red.opacity(0.09)
                                
                                    .cornerRadius(10)
                                
                                HStack{
                                    Text("Python基础语法")
                                        .font(.system(size: 15))
                                        .bold()
                                    
                                    Spacer()
                                    
                                    Button{
                                        
                                    }label: {
                                        Text("了解一下")
                                            .foregroundColor( .blue)
                                            .font(.body)
                                            .background(
                                                Color.white
                                                    .frame(width: (UIScreen.main.bounds.width - 30)/3.5, height: 35, alignment: .center)
                                                    .cornerRadius(50)
                                            )
                                    }
                                }
                                .padding(.horizontal,30)
                            }.frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.width/7, alignment: .center )
                            
                        }
                    }.frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.width/1.9 , alignment: .center)
                }
            }.padding(.leading,10)
        }
    }
}
