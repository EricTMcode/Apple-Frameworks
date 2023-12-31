//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Eric on 18/09/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: framework.urlString)!) {
                AFButton(title: "Learn More")
            }
            
            Button {
                
                isShowingSafariView = true
            } label: {
                //                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
//        .fullScreenCover(isPresented: $isShowingSafariView) {
//            SafariView(url: URL(string: framework.urlString)!)
//        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: Framework.example)
            .preferredColorScheme(.dark)
    }
}
