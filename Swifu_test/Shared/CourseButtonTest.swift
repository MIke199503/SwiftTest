//
//  CourseButtonTest.swift
//  Swifu_test
//
//  Created by 蜡笔小新的动感超人Imac on 2022/4/28.
//

import SwiftUI

struct CourseButtonTest: View {
    var body: some View {
        NavigationView{
        CourseWebView(url: URL(string: "https://www.apple.com"))
                .ignoresSafeArea(edges: .bottom)
                .navigationTitle("Apple")
        }
    }
}

struct CourseButtonTest_Previews: PreviewProvider {
    static var previews: some View {
        CourseButtonTest()
    }
}
