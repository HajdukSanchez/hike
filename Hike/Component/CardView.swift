//
//  CardView.swift
//  Hike
//
//  Created by Jozek Andrzej Hajduk Sanchez on 6/09/24.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - Properties
    
    @State private var imageNumber: Int = 1
    
    // MARK: - Functions
    
    func randomImage() {
        let randomNumber = Int.random(in: 1...5)
        if randomNumber == imageNumber {
            randomImage()
            return
        }
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack (alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .customGrayLight,
                                    .customGrayMedium
                                ], startPoint: .top, endPoint: .bottom)
                            )
                        Spacer()
                        Button(action: {
                            print("The button was pressed")
                        }, label: {
                            CustomButtonView()
                        })
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [
                                .customIndigoMedium,
                                .customSalmonLight
                            ], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    Image("image-\(imageNumber)")
                         .resizable()
                         .scaledToFit()
                         .animation(.default, value: imageNumber)
                }
                
                Button {
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [
                                .customGreenLight,
                                .customGreenMedium
                            ], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButtonStyle())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
