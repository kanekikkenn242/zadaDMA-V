import Foundation
import UIKit

enum ExploitSupportPolicy {
    struct BuildInfo {
        let build: String
    }

    static let verifiedIOS17Range = "17.0 - 17.7"
    static let verifiedIOS18Range = "18.0 - 18.7.1"
    static let verifiedIOS26Range = "26.0 - 26.6.1"
    
    // Shtuam build-in tend te iOS 27.0.1 (24A446) ne liste
    static let verifiedIOS27Builds: [BuildInfo] = [
        BuildInfo(build: "24A5355q"),
        BuildInfo(build: "24A5370h"),
        BuildInfo(build: "24A5380h"),
        BuildInfo(build: "24A5390f"),
        BuildInfo(build: "24A446")
    ]

    static func isSupported(
        systemVersion: String = UIDevice.current.systemVersion,
        build: String = ProcessInfo.processInfo.operatingSystemVersionString
    ) -> Bool {
        // BYPASS: Lejojme te gjitha versionet e iOS 27
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
