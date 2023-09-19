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
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("🍎 FrameWorks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
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
