//
//  TearEffectView.swift
//  LayoutAndGeometry
//
//  Created by Maximilian Berndt on 2023/05/08.
//

import SwiftUI

struct TearEffectView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<10) { position in
                Text("Number \(position)")
                    .alignmentGuide(.leading) { d in
                        return Double(position) * -10
                    }
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
        
    }
}

struct TearEffectView_Previews: PreviewProvider {
    static var previews: some View {
        TearEffectView()
    }
}
