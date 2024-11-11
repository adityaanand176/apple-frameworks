//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Aditya Anand on 01/09/24.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .foregroundStyle(.white)
            .font(.title2)
            .font(.system(size: 20, weight: .semibold, design: .default))
            .frame(width: 260, height: 50)
            .background(.red)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
