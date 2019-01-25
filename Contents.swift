import UIKit

let currentDate = Date()
let pasteDate = Date(timeIntervalSinceNow: -60 * 60 * 24 * 7)

extension Date {
    func displayTimeInSocialMediaStyle() ->  String {
        let secondsAgo = Int(Date().timeIntervalSince(self))
        
        if secondsAgo < 60 {
            return "\(secondsAgo) second ago"
        } else if secondsAgo < 60 * 60 {
            return "\(secondsAgo / 60) minutes ago"
        } else if secondsAgo < 60 * 60 * 24 {
            return "\(secondsAgo / 60 / 60) hours ago"
        } else if secondsAgo < 60 * 60 * 24 * 7 {
            return "\(secondsAgo / 60 / 60 / 24) days ago"
        }
        return "\(secondsAgo / 60 / 60 / 24 / 7) weeks ago"
    }
}

pasteDate.displayTimeInSocialMediaStyle()
