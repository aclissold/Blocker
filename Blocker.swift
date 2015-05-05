import Foundation

let runLoop = NSRunLoop.currentRunLoop()
let distantFuture = NSDate.distantFuture() as! NSDate

var blocking = false

public func block() {
    blocking = true
    while blocking &&
        runLoop.runMode(NSDefaultRunLoopMode, beforeDate: distantFuture) {}
}

public func unblock() {
    blocking = false
}
