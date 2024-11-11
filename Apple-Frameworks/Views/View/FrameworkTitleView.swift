//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Aditya Anand on 09/09/24.
//

import SwiftUI

struct FrameWorkTitleView: View {
    
    let framework : Framework
    
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
            Text(framework.name)
                .font(.title2)
                .foregroundStyle(Color(.label))
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameWorkTitleView(framework: MockData.sampleframework)
}
