//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Jozek Andrzej Hajduk Sanchez on 6/09/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    // MARK: - Properties
    
    @State private var randomCircles: Int = Int.random(in: 6...12)
    @State private var isAnimated: Bool = false
    
    // MARK: - Functions
    
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 4...80)
    }
    
    func randomScale() -> CGFloat {
        return CGFloat.random(in: 0.1...2)
    }
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircles, id: \.self) { item in
                Circle()
                    .foregroundStyle(Color.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(x: randomCoordinate(), y: randomCoordinate())
                    .scaleEffect(isAnimated ? randomScale() : 1)
                    .onAppear() {
                        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())) {
                            isAnimated = true
                        }
                    }
            }
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    MotionAnimationView()
        .background {
            Circle()
                .fill(.teal)
        }
}
