//
//  ScrollViewScrollTo.swift
//  Swifu_test
//
//  Created by 蜡笔小新的动感超人Imac on 2022/5/26.
//

import SwiftUI

struct ScrollViewScrollTo: View {
        let items = (1...100)

        var body: some View {
            ScrollViewReader { scrollProxy in
                ScrollView {
                    ForEach(items, id: \.self) { Text("\($0)"); Divider() }
                }

                HStack {
                    Button("First!") { withAnimation { scrollProxy.scrollTo(items.first!) } }
                    Button("Any!") { withAnimation { scrollProxy.scrollTo(50) } }
                    Button("Last!") { withAnimation { scrollProxy.scrollTo(items.last!) } }
                }
            }
        }
}

struct ScrollViewScrollTo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewScrollTo()
    }
}
