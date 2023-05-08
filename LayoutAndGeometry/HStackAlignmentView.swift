//
//  HStackAlignmentView.swift
//  LayoutAndGeometry
//
//  Created by Maximilian Berndt on 2023/05/08.
//

import SwiftUI

struct HStackAlignmentView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("Live")
                .font(.caption)
            Text("long")
            Text("and")
                .font(.title)
            Text("prosper")
                .font(.largeTitle)
        }
    }
}

struct HStackAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        HStackAlignmentView()
    }
}
