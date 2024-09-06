//
//  CustomCircleView.swift
//  Hike
//
//  Created by Jozek Andrzej Hajduk Sanchez on 6/09/24.
//

import SwiftUI

struct CustomCircleView: View {
    
    // MARK: - Properties
    
    @State private var isAnimatedGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear() {
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)) {
                        isAnimatedGradient.toggle()
                    }
                }
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
        .mask(Circle()) // Mask the ZSTACK into a specific view
        .drawingGroup() // This function create a direct connection to the GPU for High Performance Rendering
    }
}

#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        CustomCircleView()
    }
}
