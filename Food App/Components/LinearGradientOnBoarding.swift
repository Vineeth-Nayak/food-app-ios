//
//  LinearGradientOnBoarding.swift
//  Food App
//
//  Created by Vineeth P Nayak on 27/08/23.
//

import SwiftUI

struct LinearGradientOnBoarding: View {
    let geo:GeometryProxy
    
    init(_ geo:GeometryProxy){
        self.geo = geo
    }
    
    var body: some View {
        Rectangle()
            .foregroundStyle(.clear)
            .frame(width:geo.size.width,height: geo.size.height)
            .background(
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.29, green: 0.3, blue: 0.39).opacity(0), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.1, green: 0.11, blue: 0.18), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.45, y: 0),
                    endPoint: UnitPoint(x: 0.44, y: 0.9)
                )
            )
    }
}

#Preview {
    GeometryReader{
        geo in
        LinearGradientOnBoarding(geo)
    }
    
}
