Blocker
=======
A very, very simple Swift module for blocking the current run loop. This is
useful outside the context of an iOS or OS X app, where execution normally
terminates at the end of a file:

``` swift
import Foundation

import Alamofire // Alamofire/Alamofire
import Blocker // aclissold/Blocker

Alamofire.request(.GET, "http://httpbin.org/get").responseString { (_, _, string, _) in
    println(string)
    Blocker.unblock()
}

Blocker.block()
```

If you have [spam](https://github.com/spamproject/spam) installed, you can
compile this example yourself with `spam --build`!
