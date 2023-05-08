//
//  CustomAlignmentGuideView.swift
//  LayoutAndGeometry
//
//  Created by Maximilian Berndt on 2023/05/08.
//

import SwiftUI

struct CustomAlignmentGuideView: View {
    var body: some View {
        HStack {
            VStack {
                Text("@LunchioLP")
                Image("profile_pic")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .cornerRadius(15)
            }
            
            VStack {
                Text("Full name")
                Text("MAXIMILIAN BERNDT")
                    .font(.largeTitle)
            }
        }
    }
}

struct CustomAlignmentGuideView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlignmentGuideView()
    }
}
