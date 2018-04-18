//
//  UserAccount.swift
//  Copyright © 2018 wataru maeda. All rights reserved.
//

import UIKit

class UserAccount: NSObject {
  
  static let current = UserAccount()
  private override init() {} // Singleton
  
  private struct Key {
    static let name = "UserAccount.name"
  }
  
  var name: String {
    get { return StorageUtil.strForKey(Key.name) ?? "" }
    set { _ = StorageUtil.setStr(newValue, key: Key.name) }
  }
}
