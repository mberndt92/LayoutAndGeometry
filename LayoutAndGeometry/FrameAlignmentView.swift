//
//  FrameAlignmentView.swift
//  LayoutAndGeometry
//
//  Created by Maximilian Berndt on 2023/05/08.
//

import SwiftUI

struct FrameAlignmentView: View {
    var body: some View {
        Text("Live long and prosper")
            .frame(width: 350, height: 350, alignment: .topLeading)
    }
}

struct FrameAlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameAlignmentView()
    }
}
