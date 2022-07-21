//
//  ContentView.swift
//  Swifu_test (iOS)
//
//  Created by 蜡笔小新的动感超人Imac on 2022/5/9.
//

import SwiftUI

struct ContentView1: View {
    @EnvironmentObject var network: Network

    var body: some View {
        ScrollView {
            Text("All users")
                .font(.title)
                .bold()

            VStack(alignment: .leading) {
                ForEach(network.users) { user in
                    HStack(alignment:.top) {
                        Text("\(user.id)")

                        VStack(alignment: .leading) {
                            Text(user.name)
                                .bold()

                            Text(user.email.lowercased())

                            Text(user.phone)
                        }
                    }
                    .frame(width: 300, alignment: .leading)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.6667672396, green: 0.7527905703, blue: 1, alpha: 0.2662717301)))
                    .cornerRadius(20)
                }
                
            }

        }
        .padding(.vertical)
        .onAppear {
            network.getUsers()
        }
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
            .environmentObject(Network())
    }
}
