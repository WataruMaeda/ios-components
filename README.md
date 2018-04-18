# iOS Components

This repo includes useful helper classes and components with origanized file structure.
I persinally use them for my production.
- [x] Initial Realm, Admob, StoreKit (In-App-Purchase), App Rate setup
- [x] Various handy methods

# How to use

1. Drag & drop the [classes](https://github.com/WataruMaeda/ios-components/tree/master/classes), (assets, supporting files) to your project.
2. Create `Podfile` and install the libraries.
```
pod 'RealmSwift'
pod 'Google-Mobile-Ads-SDK'
pod 'SwiftyStoreKit'
pod 'SwiftRater'
```
3. Add setup in the `application: didFinishLaunchingWithOptions` function. It's in `AppDelegate.swift`.
```
SetupUtil.setup()
```

# Others

- Access camera & photo library ({your-project-name}-Info.plist)

```
<key>NSCameraUsageDescription</key>
<string>You will be able to take photo and video with camera.</string>
<key>NSMicrophoneUsageDescription</key>
<string>You will be able to take video with sound.</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>You will be able to select images from Photo library.</string>
```

- Update app name (InfoPlist.strings)

```
"CFBundleDisplayName" = "{your-app-name}";
```


# License

This project is available under the MIT license. See the [LICENSE](https://github.com/WataruMaeda/ios-components/blob/master/LICENSE) file for more info.
