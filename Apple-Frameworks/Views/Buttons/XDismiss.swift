//
//  XDismiss.swift
//  Apple-Frameworks
//
//  Created by Aditya Anand on 09/09/24.
//

import SwiftUI

struct XDismiss: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 40, height: 40)
            }
        }
        .padding()
    }
}

#Preview {
    XDismiss(isShowingDetailView: .constant(false))
}
