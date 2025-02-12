# Spline Onboarding - iOS 3D Integration

This project demonstrates how to integrate **Spline** into an iOS app using SwiftUI, allowing you to display 3D content within your application.

## 📌 Features
- Load and display **3D scenes** from **Spline**
- Fetch **3D assets** from a **remote URL** or **local file**
- Integrate with **SwiftUI** for a seamless onboarding experience

## 🚀 Requirements
- **iOS 17.0+**
- **Xcode 15+**
- **Swift Package Manager (SPM)**

## 📦 Installation
### Step 1: Add Spline Package
1. Open **Xcode** and go to `File` → `Add Packages...`
2. Enter the **SplineRuntime** package URL:
   ```
   https://github.com/spline-design/swift-runtime
   ```
3. Choose the latest version and add it to your project.

## 🛠️ Implementation
### Step 2: Import Spline and SwiftUI
In your SwiftUI view file:
```swift
import SplineRuntime
import SwiftUI
```

### Step 3: Create a 3D View
Define a `OnBoard3DView` to display your 3D scene:
```swift
struct OnBoard3DView: View {
    var body: some View {
        // Fetch from remote URL
        let url = URL(string: "https://build.spline.design/HLmB6rlE-5C9UpFOmVEK/scene.splineswift")!
        
        // Alternatively, load from local file
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!
        
        SplineView(sceneFileURL: url)
    }
}
```

### Step 4: Use the 3D View in Your App
Add the 3D view inside your `ContentView`:
```swift
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
                // Button action
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            
            Spacer()
        }
    }
}
```

### Step 5: Preview Your Work
Run your app in **Simulator** or on a **physical device** to see the 3D onboarding screen in action.

## 🎨 Customization
- Replace the **Spline URL** with your own **3D model URL** from [Spline](https://spline.design/)
- Customize the **text, fonts, colors, and layout** to match your app's theme

## 📖 Resources
- [Spline Official Website](https://spline.design/)
- [Spline Swift Runtime GitHub](https://github.com/spline-design/swift-runtime)

## 🏗️ Future Improvements
- Add **interactivity** to the 3D models
- Implement **animations** and scene transitions
- Support **dark mode compatibility**

## 📜 License
This project is open-source and can be modified freely.

---
✨ **Enjoy building immersive 3D experiences in your iOS apps!** 🚀

