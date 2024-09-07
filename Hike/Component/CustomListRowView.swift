//
//  CustomListRowView.swift
//  Hike
//
//  Created by Jozek Andrzej Hajduk Sanchez on 7/09/24.
//

import SwiftUI

struct CustomListRowView: View {
    
    // MARK: - Properties
    
    @State var label: String
    @State var icon: String
    @State var content: String? = nil
    @State var tintColor: Color
    @State var linkLabel: String? = nil
    @State var linkUrl: String? = nil
    
    var body: some View {
        LabeledContent {
            if content != nil {
                Text(content!)
                    .foregroundStyle(Color.primary)
                    .fontWeight(.regular)
            } else if linkLabel != nil && linkUrl != nil {
                Link(linkLabel!, destination: URL(string: linkUrl!)!)
                    .foregroundStyle(tintColor)
                    .fontWeight(.regular)
            } else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(tintColor)
                    Image(systemName: icon)
                        .foregroundStyle(Color.white)
                        .fontWeight(.semibold)
                }
                Text(label)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            label: "Link",
            icon: "paintpalette",
            tintColor: .pink,
            linkLabel: "hajduksanchez.com",
            linkUrl: "https://github.com/HajdukSanchez")
        CustomListRowView(
            label: "Content",
            icon: "paintpalette",
            content: "Normal",
            tintColor: .pink)
        CustomListRowView(
            label: "Empty",
            icon: "paintpalette",
            tintColor: .pink)
    }
}
