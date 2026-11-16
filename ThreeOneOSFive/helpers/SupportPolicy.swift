import Foundation

enum ExploitSupportPolicy {
    // E mbajme si STRUCT qe SettingsView.swift ta gjeje
    struct BuildInfo: Hashable {
        let beta: Int
        let publicBeta: Int?
        let build: String
    }

    static let verifiedIOS17Range = "17.0 - 17.7"
    static let verifiedIOS18Range = "18.0 - 18.7.1"
    static let verifiedIOS26Range = "26.0 - 26.6.1"

    static let verifiedIOS27Builds: [BuildInfo] = [
        BuildInfo(beta: 1, publicBeta: nil, build: "24A5355q"),
        BuildInfo(beta: 2, publicBeta: nil, build: "24A5370h"),
        BuildInfo(beta: 3, publicBeta: 1,   build: "24A5380h"),
        BuildInfo(beta: 4, publicBeta: 2,   build: "24A5390f"),
        BuildInfo(beta: 4, publicBeta: 2,   build: "24A446") // Build-i yt i iOS 27.0.1
    ]

    // Kjo eshte signatura e sakte qe e kerkojne App.swift dhe KernelExploit.swift
    static func isSupported(
        major: Int,
        minor: Int,
        patch: Int,
        build: String
    ) -> Bool {
        // BYPASS: Lejojme te gjitha versionet e iOS 27
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
