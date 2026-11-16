import Foundation
import UIKit

enum ExploitSupportPolicy {
    static let verifiedIOS17Range = "17.0 - 17.7"
    static let verifiedIOS18Range = "18.0 - 18.7.1"
    static let verifiedIOS26Range = "26.0 - 26.6.1"

    // Struct-i origjinal qe pritet nga OnboardingView dhe SettingsView
    struct BuildInfo: Hashable {
        let beta: Int
        let publicBeta: Int?
        let build: String
    }

    // Vargu origjinal i build-eve
    static let verifiedIOS27Builds: [BuildInfo] = [
        BuildInfo(beta: 1, publicBeta: nil, build: "24A5355q"),
        BuildInfo(beta: 2, publicBeta: nil, build: "24A5370h"),
        BuildInfo(beta: 3, publicBeta: 1,   build: "24A5380h"),
        BuildInfo(beta: 4, publicBeta: 2,   build: "24A5390f")
    ]

    // Funksioni origjinal qe pritet nga App.swift dhe KernelExploit.swift (me 3 argumente)
    static func isSupported(
        _ systemVersion: String,
        _ build: String,
        _ machine: String
    ) -> Bool {
        // BYPASS: Lejojme te gjitha versionet e iOS 27 (perfshire 27.0.1)
        if systemVersion.hasPrefix("27.") {
            return true
        }
        
        // Lejojme versionet e tjera te njohura
        if systemVersion.hasPrefix("17.") || systemVersion.hasPrefix("18.") || systemVersion.hasPrefix("26.") {
            return true
        }
        
        return false
    }
}
