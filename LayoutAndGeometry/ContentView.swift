//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Maximilian Berndt on 2023/05/06.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]

    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(helixColor(geo: geo, fullView: fullView, index: index))
                            .rotation3DEffect(rotationFrame(geo: geo, fullView: fullView), axis: (x: 0, y: 1, z: 0))
                            .opacity(rotationOpacity(geo: geo, fullView: fullView))
                            .scaleEffect(scaleEffectMultiplier(geo: geo, fullView: fullView))
                    }
                    .frame(height: 40)
                }
            }
        }
    }
    
    private func helixColor(geo: GeometryProxy, fullView: GeometryProxy, index: Int) -> Color {
        let currentY = geo.frame(in: .global).minY

        let fullHeight = fullView.size.height
        
        
        let hue: Double = ((1.0 / fullHeight) * abs(fullHeight - currentY))

        // adding the min modifier for safety however it shouldn't be possible due to my formulae whereas I assign every part of the screens height to a hue directly
        return Color(hue: min(hue, 1.0), saturation: 1, brightness: 1)
    }
    
    private func scaleEffectMultiplier(geo: GeometryProxy, fullView: GeometryProxy) -> Double {
        
        let minimumScaleEffect = 0.5
        let maximumScaleEffect = 1.2
        
        let modifier = fullView.size.height * 0.25
        
        let startScalingDown = fullView.frame(in: .global).minY + modifier

        let currentMaxY = geo.frame(in: .global).maxY
        if currentMaxY <= startScalingDown {
            return max(1.0 - (minimumScaleEffect / modifier) * (startScalingDown - currentMaxY), minimumScaleEffect)
        }
        
        if currentMaxY <= startScalingDown {
            return max(1 - (minimumScaleEffect / modifier) * (startScalingDown - currentMaxY), minimumScaleEffect)
        }
        
        let startScalingUp = fullView.frame(in: .global).maxY - modifier
        if currentMaxY >= startScalingUp {
            return min(1 + (maximumScaleEffect / modifier) * (currentMaxY - startScalingUp), maximumScaleEffect)
        }
        
        return 1.0
    }
    
    private func rotationFrame(geo: GeometryProxy, fullView: GeometryProxy) -> Angle {
        return .degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5
    }
    
    private func rotationOpacity(geo: GeometryProxy, fullView: GeometryProxy) -> Double {
        
        let startFading = fullView.frame(in: .global).minY + 200

        let currentMaxY = geo.frame(in: .global).maxY
        if currentMaxY <= startFading {
            return max(1.0 - (1.0 / 200.0) * (startFading - currentMaxY), 0)
        }

        return 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
