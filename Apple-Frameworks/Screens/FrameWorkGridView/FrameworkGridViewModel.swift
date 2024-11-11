//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Aditya Anand on 06/09/24.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework : Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    let columns : [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
}
