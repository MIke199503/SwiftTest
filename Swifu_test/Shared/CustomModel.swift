//
//  CustomModel.swift
//  Swifu_test
//
//  Created by 蜡笔小新的动感超人Imac on 2022/4/21.
//

import SwiftUI


struct DataPoint:Identifiable{
    var id = UUID()
    var name:String
    var value:Double
}

class DataModel:ObservableObject {
    @Published var dataSet:[DataPoint] = [
        DataPoint(name: "Data Point 1", value: 31.24),
        DataPoint(name: "Data Point 2", value: 1.24),
        DataPoint(name: "Data Point 3", value: 3.24),
        DataPoint(name: "Data Point 4", value: 12.24),
        DataPoint(name: "Data Point 5", value: 20.24),
        DataPoint(name: "Data Point 6", value: 16.24),
    ]
    
}


struct CustomModel: View {
    @StateObject var dataModel = DataModel()
    @State var modelViewactive:Bool = false
    @State var offset = CGSize.zero
    
    var body: some View {
        GeometryReader { bounds in
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.pink,Color.orange]), startPoint: .top, endPoint: .bottomLeading)
                    .opacity(0.6)
                    .ignoresSafeArea(.all)
                
                
                ZStack {
                    VStack {
                        VStack {
                            Text("My Table")
                                .font(.title)
                                .bold()
                                .padding()
                            VStack {
                                ScrollView{
                                    ForEach(dataModel.dataSet){ datapoint in
                                        HStack{
                                            Text(datapoint.name)
                                                .font(.headline)
                                            Spacer()
                                            Text(String(format: "%.2f", datapoint.value))
                                        }
                                        Divider()
                                        
                                    }
                                }
                            }
                            Button{
                                withAnimation {
                                    modelViewactive.toggle()
                                }
                            }label: {
                                Text("Present Model View")
                                    .font(.headline)
                            }
                        }
                        .padding(40)
                    }
                    .blur(radius: modelViewactive ? 10 : 0)
                    .scaleEffect(modelViewactive ? 0.95 : 1)
                    if modelViewactive{
                        ZStack {
                            ModelView(dataModel: dataModel, modelViewactive: $modelViewactive, width: bounds.size.width)
                        }
                        .animation(.easeIn,value: 0)
                        .transition(.move(edge: .bottom))
                        .offset(x: 0, y: offset.height > 0 ? offset.height : 0.5 )
                        .gesture(
                       DragGesture()
                        .onChanged{gesture in
                            self.offset.height  = gesture.translation.height
                        }
                        .onEnded{ _ in
                                   if self.offset.height > bounds.size.height / 2 {
                                       withAnimation{
                                           modelViewactive.toggle()
                                       }
                                       self.offset =  .zero
                                   }else{
                                       self.offset = .zero
                                   }
                        }
                        )
                    }
                }
            }
        }
        
        
    }
}

struct CustomModel_Previews: PreviewProvider {
    static var previews: some View {
        CustomModel()
    }
}

struct ModelView:View {
    @ObservedObject var dataModel:DataModel
    @State var nameEntry : String = ""
    @State var valueEntry : String = ""
    @Binding var modelViewactive:Bool
    var width:CGFloat
    
    var body: some View{

        ZStack{
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.white)
                .ignoresSafeArea()
                .opacity(0.6)
                .shadow(radius: 15)
            VStack{
                VStack{
                    Text("My model table")
                        .font(.title2)
                        .bold()
                    ScrollView{
                        ForEach(dataModel.dataSet){ datapoint in
                            HStack{
                                Text(datapoint.name)
                                    .font(.headline)
                                Spacer()
                                Text(String(format: "%.2f", datapoint.value))
                            }
                            Divider()
                        }
                    }
                }
                .padding()
                .background(
                        RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(.white)
                            .opacity(0.3)
                            .shadow(radius: 7.5)
                    )
                TextField("Enter name Here",text: $nameEntry)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(.white)
                            .opacity(0.35)
                            .shadow(radius:7.5)
                    )
                TextField("Enter value Here",text: $valueEntry)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(.white)
                            .opacity(0.35)
                            .shadow(radius:7.5)
                    )
                HStack{
                    Button{
                        withAnimation(.easeIn(duration:0.3)){
                            modelViewactive.toggle()
                        }
                    }label:{
                        Text("Back")
                            .bold()
                        
                    }
                    Spacer()
                    Button{
                        withAnimation{
                            if Double(valueEntry) != nil{
                                dataModel.dataSet.append(DataPoint(name: nameEntry, value: Double(valueEntry)!))
                                nameEntry = ""
                                valueEntry = ""
                                
                            }
                        }
                    }label:{
                        Text("Add data point")
                            .bold()
                    }
                }
                .padding(.vertical,20)
            }
            .frame(height: width * 1.45)
            .padding(30)
            Spacer()
        }
        .offset(y:70)
     
    }
}
