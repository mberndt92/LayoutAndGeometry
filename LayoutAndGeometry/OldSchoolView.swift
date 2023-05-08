//
//  OldSchoolView.swift
//  LayoutAndGeometry
//
//  Created by Maximilian Berndt on 2023/05/07.
//

import SwiftUI

struct OldSchoolView: View {
    
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(1..<20) { number in
                    GeometryReader { geo in
                        Text("Number \(number)")
                            .font(.largeTitle)
                            .padding()
                            .background(.red)
                            .rotation3DEffect(.degrees(-geo.frame(in: .global).minX / 8), axis: (x: 0, y: 1, z: 0))
                            .frame(width: 200, height: 200)
                    }
                    .frame(width: 200, height: 200)
                }
            }
        }
    }
}

struct OldSchoolView_Previews: PreviewProvider {
    static var previews: some View {
        OldSchoolView()
    }
}
