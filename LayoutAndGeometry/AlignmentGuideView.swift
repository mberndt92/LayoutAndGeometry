//
//  AlignmentGuideView.swift
//  LayoutAndGeometry
//
//  Created by Maximilian Berndt on 2023/05/08.
//

import SwiftUI

struct AlignmentGuideView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello World")
                .alignmentGuide(.leading) { d in
                    return d[.trailing]
                }
            Text("This is a longer line of text")
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
        
    }
}

struct AlignmentGuideView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuideView()
    }
}
