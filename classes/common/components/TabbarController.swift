//
//  TabbarController.swift
//  Copyright © 2017 Wataru Maeda. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {
  
  fileprivate var isTabPresenting = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewControllers()
    initViews()
    setupTheme()
  }
}

// MARK: - UI

extension TabbarController {
  
  fileprivate func initViews() {
    
    delegate = self
    
    // tab image tint color can be changed
    for tbi in tabBar.items! {
      tbi.image = tbi.image?.withRenderingMode(.alwaysOriginal)
    }
  }
  
  fileprivate func setupViewControllers() {
    
    // init view controllers
    let viewController1 = UIViewController()
    let viewController2 = UIViewController()
    
    // setting tab items
    viewController1.tabBarItem = UITabBarItem(title: "Controller 1", image: nil, tag: 0)
    viewController1.tabBarItem = UITabBarItem(title: "Controller 2", image: nil, tag: 1)
    
    // wrap with navigation controller
    let navigationContoller1 = NavigationController(rootViewController: viewController1)
    let navigationContoller2 = NavigationController(rootViewController: viewController2)
    
    // set in view controllers array
    viewControllers = [navigationContoller1, navigationContoller2]
    isTabPresenting = true
    selectedIndex = 0
  }
  
  fileprivate func setupTheme() {
    
    // selected icon tint color
    UITabBar.appearance().tintColor = UIColor.keyColor
    
    // tabbar item ScreenTitle color
    UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.keyColor], for:.normal)
    
    // tabbar item ScreenTitle selected color
    UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.keyColor], for:.selected)
    
    // selected background color
    UITabBar.appearance().selectionIndicatorImage = UIImage()
  }
}

// MARK: - Action

extension TabbarController: UITabBarControllerDelegate {
  
  // MARK: UITabBarControllerDelegate
  
  func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
  }
}

// MARK: - Animation

extension TabbarController {
  
  internal func showTab() {
    
    isTabPresenting = true
    var frm = tabBar.frame
    frm.origin.y = view.frame.size.height - frm.size.height
    UIView.animate(withDuration: 0.5, animations: {
      self.tabBar.frame = frm
    })
  }
  
  internal func hideTab() {
    
    isTabPresenting = false
    var frm = tabBar.frame
    frm.origin.y = view.frame.size.height
    UIView.animate(withDuration: 0.5, animations: {
      self.tabBar.frame = frm
    })
  }
}
