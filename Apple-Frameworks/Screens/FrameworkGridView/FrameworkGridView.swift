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
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink {
                        FrameworkDetailView(framework: framework, isShowingDetailView: $vm.isShowingDetailView)
                    } label: {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("🍎 FrameWorks")
        }
        .tint(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
