//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Jozek Andrzej Hajduk Sanchez on 6/09/24.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed
                ? LinearGradient(colors: [
                    .customGrayMedium,
                    .customGrayLight
                ], startPoint: .top, endPoint: .bottom)
                : LinearGradient(colors: [
                    .customGrayLight,
                    .customGrayMedium
                ], startPoint: .top, endPoint: .bottom)
            )
            .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}
