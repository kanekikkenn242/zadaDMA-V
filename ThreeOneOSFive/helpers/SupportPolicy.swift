import Foundation
import UIKit

enum ExploitSupportPolicy {
    static let verifiedIOS17Range = "17.0 - 17.7"
    static let verifiedIOS18Range = "18.0 - 18.7.1"
    static let verifiedIOS26Range = "26.0 - 26.6.1"

    // Ky është tipi që pritet nga OnboardingView (tuple, jo struct!)
    static let verifiedIOS27Builds: [(beta: Int, publicBeta: Int?, build: String)] = [
        (beta: 1, publicBeta: nil, build: "24A5355q"),
        (beta: 2, publicBeta: nil, build: "24A5370h"),
        (beta: 3, publicBeta: 1,   build: "24A5380h"),
        (beta: 4, publicBeta: 2,   build: "24A5390f")
    ]

    // KJO është signatura e saktë që e kërkojnë App.swift dhe KernelExploit.swift
    static func isSupported(
        major: Int,
        minor: Int,
        patch: Int,
        build: String
    ) -> Bool {
        // BYPASS: Lejojme te gjitha versionet e iOS 27 (perfshire 27.0.1)
        if major == 27 {
            return true
        }
        
        // Lejojme versionet e tjera te njohura
        if major == 17 || major == 18 || major == 26 {
            return true
        }
        
        return false
    }
}
