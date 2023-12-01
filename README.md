# VisionPlusBSS

When partners wants to integrate the app with Vision Plus, they can integrate the iOS project with VisionPlusBSS

The following steps are to add abilities from Vision Plus to your iOS project.

## 1. Installation

### Cocoapods

Add `VisionPlusBSS` dependency to the app project on the `Podfile` of your root project

``` bash
pod "VisionPlusBSS"
```

Then install the dependency by running this command

``` bash
$ pod install
```

### Swift Package Manager

Add `VisionPlusBSS` dependency to the app project
1. In Xcode, click File > Add Packages...
2. Enter Package URL: https://github.com/visionplus-development/visionplus-bss-ios-sdk
3. In App Target add Frameworks, Libraries, and Embedded Content: VisionPlusBSS

## 2. Initial Setup

### Configure Your Project

 Configure the `Info.plist` file with an XML snippet that contains data about your app for . 

``` xml
<key>GIDClientID</key>
<string>YOUR GOOGLE CLIENT ID</string>
<key>FacebookAppID</key>
<string>FACEBOOK APP ID</string>
<key>FacebookClientToken</key>
<string>FACEBOOK CLIENT TOKEN</string>
<key>FacebookDisplayName</key>
<string>YOUR APP DISPLAY NAME</string>
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>FACEBOOK APP ID</string>
            <string>GOOGLE CLIENT SECRET</string>
        </array>
    </dict>
</array>
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>fbapi</string>
    <string>fbauth2</string>
</array>
```

### Connect Your App Delegate

Replace the code in `AppDelegate.swift` method with the following code. This code initializes the SDK when your app launches, and allows the SDK to handle logins and sharing from native app.

``` swift
import VisionPlusBSS

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    ) -> Bool {
        VisionPlusBSS.shared.key = "YOUR SECRET KEY"
        VisionPlusBSS.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        return true
    }
    
    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplicationOpenURLOptionsKey : Any] = [:]
    ) -> Bool {
        VisionPlusBSS.shared.application(app, open: url)
    }
}
```

### Connect Your Scene Delegate

iOS 13 moved opening URL functionality to the SceneDelegate. If you are using iOS 13, add the following method to your SceneDelegate.

``` swift
import VisionPlusBSS

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        guard let url = URLContexts.first?.url else {
            return
        }
        let _ = VisionPlusBSS.shared.application(UIApplication.shared, open: url)
    }
}
```

## 3. Show Login Screen

``` swift
class ViewController: UIViewController {

     override func viewDidLoad() {
        super.viewDidLoad()
        
        // listen to authentication delegate
        VisionPlusBSS.shared.authDelegate = self
        
        // presenting login screen
        present(VisionPlusBSS.shared.loginViewController(), animated: true)
     }
}

extension ViewController: VPAuthDelegate {
    
    func didAuthenticationSuccess(token: String, provider: VPAuthProvider) {
        print(token, provider.rawValue)
    }
    
    func didAuthenticationFailure(error: Error) {
        print(error)
    }
}
```

## 4. Development or Build on Real Device

Update: 02 December 2023

> During the development, when integrate the VisionPlusBSS iOS SDK with your app, if you want to build your app on real device, you need to signing your app with valid team or Signin Certificate: `MNC Sky Vision, PT Tbk`
