//
//  MotionAnimationView.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 13/12/2024.
//

import SwiftUI

struct MotionAnimationView: View {

    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false

    func randomCordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }

    func randomSize() -> CGFloat {
        return CGFloat.random(in: 10...300)
    }

    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }

    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }

    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(
                            width: randomSize(), height: randomSize(),
                            alignment: .center
                        )
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCordinate(max: geometry.size.width) / 2,
                            y: randomCordinate(max: geometry.size.height) / 2
                        )
                        .animation(
                            Animation.interpolatingSpring(
                                stiffness: 0.5, damping: 0.5
                            )
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay()),
                            value: isAnimating
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        })
                }
            }
            .drawingGroup()
        }
    }
}

#Preview {
    MotionAnimationView()
}
