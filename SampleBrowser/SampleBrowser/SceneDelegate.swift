// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var engineProvider = EngineProvider(telemetryProxy: TelemetryHandler())

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let baseViewController = RootViewController(engineProvider: engineProvider)
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = baseViewController
        window?.makeKeyAndVisible()
    }
}
