//
//  test.swift
//  Swifu_test
//
//  Created by 蜡笔小新的动感超人Imac on 2022/5/9.
//

import SwiftUI

struct Example2: View {
    let img = ["1", "2", "3", "4", "5"]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 0) {
                ForEach(0..<img.count) { index in
                    GeometryReader { proxy in
                        Image(img[index])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .rotation3DEffect(self.rotateAngle(proxy), axis: (x: 0, y: 11, z: 0))
                    }
                    .frame(width: 600.0 / 3, height: 600.0 / 3 * (425 / 640))
                }
            }
        }
        .frame(width: 600)
        .coordinateSpace(name: "ScrollViewSpace")
    }

    func rotateAngle(_ proxy: GeometryProxy) -> Angle {
        let dif = 600 * 0.5 - proxy.frame(in: .named("ScrollViewSpace")).midX
        let pct = min(dif / proxy.size.width * 0.5, 1)
        return .degrees(Double(30 * pct))
    }
}
struct test_Previews: PreviewProvider {
    static var previews: some View {
        Example2()
    }
}
