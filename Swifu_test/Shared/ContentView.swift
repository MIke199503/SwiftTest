//
//  ContentView.swift
//  Shared
//
//  Created by 蜡笔小新的动感超人Imac on 2022/3/11.
//

import SwiftUI

class colorchoose : ObservableObject{
    @Published var progressvalue:Float = 0.0
    
}


struct ProgressBar: View {
    @Binding var value: Float
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
                
                Rectangle()
                    .frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(UIColor.systemBlue))
                    .animation(.linear, value: value)
                    
            }.cornerRadius(20.0)
        }
    }
}




struct ContentView: View {
    @ObservedObject var progressValue:colorchoose = colorchoose()
    
    var body: some View {
        VStack {
            
            ZStack {
                ProgressBar(value: $progressValue.progressvalue)
                    .frame(width: 200, height: 50, alignment: .center)
                Button(action: {
                    self.startProgressBar()
                }) {
                    Text("Start")
                        .font(.title2)
                        .foregroundColor(progressValue.progressvalue > progressValue.progressvalue * 0.5 ? Color.yellow : Color.blue)
                }.padding()
            }
            

            
            Button(action: {
                self.resetProgressBar()
            }) {
                Text("Reset")
            }
            
            Spacer()
        }.padding()
    }
    
    func startProgressBar() {
        for _ in 0...80 {
            progressValue.progressvalue += 0.015
        }
    }
    
    func resetProgressBar() {
        progressValue.progressvalue = 0.0
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
