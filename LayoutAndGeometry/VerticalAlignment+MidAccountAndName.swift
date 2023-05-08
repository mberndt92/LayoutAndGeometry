//
//  VerticalAlignment+MidAccountAndName.swift
//  LayoutAndGeometry
//
//  Created by Maximilian Berndt on 2023/05/06.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct VerticalAlignment_MidAccountAndName: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@LunchioLP")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]}
                Image("profile_pic")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .cornerRadius(15)
            }
            
            VStack {
                Text("Full name")
                Text("MAXIMILIAN BERNDT")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]}
                    .font(.largeTitle)
            }
        }
    }
}

struct VerticalAlignment_MidAccountAndName_Previews: PreviewProvider {
    static var previews: some View {
        VerticalAlignment_MidAccountAndName()
    }
}
