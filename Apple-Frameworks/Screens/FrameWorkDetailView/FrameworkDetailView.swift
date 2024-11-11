//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Aditya Anand on 28/06/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            Spacer()
            FrameWorkTitleView(framework: framework)
            Text(framework.description)
                .padding()
                .font(.body)
            Spacer()
            Button(action: {
                isShowingSafariView = true
            }, label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            })
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://developer.apple.com")!)
            })
            
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleframework, isShowingDetailView: .constant(false))
}
