# [WIP] iOS Components

This repo includes useful helper classes and components with origanized file structure.
I persinally use them for my production apps in the Apple Store.
- [x] Initial Realm, Admob, StoreKit (In-App-Purchase), App Rate setup
- [x] Various handy methods

# How to use

1. Drag & drop the [classes](https://github.com/WataruMaeda/ios-components/tree/master/Classes), (assets, supporting files) to your project.
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
