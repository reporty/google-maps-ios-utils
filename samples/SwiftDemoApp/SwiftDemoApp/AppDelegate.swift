/* Copyright (c) 2016 Google Inc.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import GoogleMaps
import UIKit

// Change this key to a valid key registered with the demo app bundle id.
let kMapsAPIKey = ""

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    if kMapsAPIKey.isEmpty {
      fatalError("Please provide an API Key using kMapsAPIKey")
    }
    GMSServices.provideAPIKey(kMapsAPIKey)
    return true
  }
}

