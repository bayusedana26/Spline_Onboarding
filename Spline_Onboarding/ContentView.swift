//
//  ContentView.swift
//  Spline_Onboarding
//
//  Created by Bayu Sedana on 12/02/25.
//

import SplineRuntime
import SwiftUI

struct OnBoard3DView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/HLmB6rlE-5C9UpFOmVEK/scene.splineswift")!

        // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        SplineView(sceneFileURL: url)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            OnBoard3DView()
                .frame(height: 500)
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                Text("Build your brand")
                    .font(.title.bold())
                
                Text("Stay Up-to-Date with the latest news and updates")
                    .font(.callout)
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Button("Get Started") {
                // Code goes here
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
