import UIKit

let currentDate = Date()
let pasteDate = Date(timeIntervalSinceNow: -60 * 60)

extension Date {
    func displayTimeInSocialMediaStyle() ->  String {
        let secondsAgo = Int(Date().timeIntervalSince(self))
        
        if secondsAgo < 60 {
            return "\(secondsAgo) second ago"
        }
        
        return "\(secondsAgo / 60) minutes ago"
    }
}

pasteDate.displayTimeInSocialMediaStyle()
