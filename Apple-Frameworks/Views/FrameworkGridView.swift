//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Eric on 17/09/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        VStack {
            FrameworkTitleView(name: "App Clips", imageName: "app-clip")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
