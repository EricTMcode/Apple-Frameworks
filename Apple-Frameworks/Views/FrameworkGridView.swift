//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Eric on 17/09/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var vm = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: vm.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                vm.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 FrameWorks")
            .sheet(isPresented: $vm.isShowingDetailView) {
                FrameworkDetailView(framework: vm.selectedFramework ?? Framework.example, isShowingDetailView: $vm.isShowingDetailView)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
