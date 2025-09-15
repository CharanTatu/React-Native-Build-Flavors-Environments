//
//  EnvironmentModule.swift
//  dagconnect
//
//  Created by Charan Tatu on 24/07/25.
//

import Foundation
import React


@objc(EnvironmentModule)
class EnvironmentModule : NSObject {
  
  @objc
  func getEnv()-> String{
    var schemeName = Bundle.main.object(forInfoDictionaryKey: "SchemeName") as? String ?? "Debug"
    // print("--->\(schemeName.lowercased())")
    return schemeName.lowercased()
  }
  
  @objc
  func getVersionNumber()-> String{
    print("Version N--->\(Bundle.main.releaseVersionNumber ?? "1.0")")
    return Bundle.main.releaseVersionNumber ?? "1.0"
  }
  
  @objc
  func getBuildNumber()-> String{
    print("Build N--->\(Bundle.main.buildVersionNumber ?? "1")")
    return Bundle.main.buildVersionNumber ?? "1"
  }

  @objc static func requiresMainQueueSetup() -> Bool { return true }
}

extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
