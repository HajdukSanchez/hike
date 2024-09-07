//
//  SettingsView.swift
//  Hike
//
//  Created by Jozek Andrzej Hajduk Sanchez on 7/09/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .padding(.top, 8)
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos butis even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            Section {
                CustomListRowView(label: "Application", icon: "apps.iphone", content: "Hike", tintColor: .blue)
                CustomListRowView(label: "Compatibility", icon: "info.circle", content: "iOS, iPadOS", tintColor: .red)
                CustomListRowView(label: "Technology", icon: "swift", content: "Swift", tintColor: .orange)
                CustomListRowView(label: "Version", icon: "gear", content: "1.0", tintColor: .purple)
                CustomListRowView(label: "Developer", icon: "ellipsis.curlybraces", content: "Jozek Hajduk", tintColor: .mint)
                CustomListRowView(label: "Designer", icon: "paintpalette", content: "Robert Petras", tintColor: .pink)
                CustomListRowView(label: "Website", icon: "globe", tintColor: .indigo, linkLabel: "hajduksanchez.com", linkUrl: "https://github.com/HajdukSanchez")
            } header: {
                Text("About the APP".uppercased())
            } footer: {
                HStack {
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                .padding(.vertical, 8)
            }
        }
    }
}

#Preview {
    SettingsView()
}
