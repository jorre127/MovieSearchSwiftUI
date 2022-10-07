//
//  ProgressIndicator.swift
//  MovieSearchSwiftUI
//
//  Created by Jordy De Jonghe on 07/10/2022.
//

import SwiftUI

import SwiftUI

struct RingView: View {
    @State private var show:Bool = false
    var color1:Color = .primary
    var color2:Color = .secondary
    var width:CGFloat = 44
    var height:CGFloat = 44
    var percent:CGFloat = 58
    var multiplier:CGFloat {
        return width/44
    }
    var progress:CGFloat{
        return 1 - percent/100
    }
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5 * multiplier))
                .frame(width: width, height: height)
            Circle()
                .trim(from: show ? progress : 1, to: 1)
                .stroke(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [color1, color2]),
                            startPoint: .topTrailing,
                            endPoint: .bottomLeading
                        ),
                    style: StrokeStyle(
                            lineWidth: 5 * multiplier,
                            lineCap: .round,
                            lineJoin: .round,
                            miterLimit: .infinity,
                            dash: [1,0],
                            dashPhase: 0
                        )
                )
                .onAppear {
                    withAnimation(.easeInOut.delay(0.3)) { show = true }
                }
                .rotationEffect(Angle(degrees: 270))
                .rotation3DEffect(Angle(degrees: 180),axis: (x: 0.0, y: 1.0, z: 0.0))
                .frame(width: width, height: height)
                .shadow(color: color2.opacity(0.1), radius: 3 * multiplier, x: 0.0, y: 3.0 * multiplier)
            
            Text("\(Int(percent))%")
                .font(.system(size: 14 * multiplier))
                .fontWeight(.bold)
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView(color1: .green)
    }
}
