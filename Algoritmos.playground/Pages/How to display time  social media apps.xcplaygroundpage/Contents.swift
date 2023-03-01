//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
let now = Date()
let pastDate = Date(timeIntervalSinceNow: -60)

extension Date {
    func timeAgoDisplay() -> String {
        let secondsAgo = Int(Date().timeIntervalSince(self))
        
        let minute = 60
        let hour = minute * 60
        let day = 24 * hour
        let week = 7 * day
        
        if secondsAgo < minute{
            return "\(secondsAgo) seconds ago "
        } else if secondsAgo < hour {
            return "\(secondsAgo / minute) minutes ago "
        }else if secondsAgo < day {
            return "\(secondsAgo / hour) hours ago "
        }else if secondsAgo < week {
            return "\(secondsAgo / day) days ago "
        }
        
        return "\(secondsAgo / week) weeks ago "
    }
}

pastDate.timeAgoDisplay()
