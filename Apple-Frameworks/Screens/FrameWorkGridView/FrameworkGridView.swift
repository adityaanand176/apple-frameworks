//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Aditya Anand on 17/06/24.
//

import SwiftUI



struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks) { frameworks in
                        FrameWorkTitleView(framework: frameworks)
                            .onTapGesture {
                                viewModel.selectedFramework = frameworks
                            }
                    }
                }
                .navigationTitle("🍏Frameworks Test")
                .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                    FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
                })
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


