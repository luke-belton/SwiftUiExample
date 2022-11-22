//
//  SwiftUiExampleApp.swift
//  SwiftUiExample
//
//  Created by Luke Belton on 30/09/2022.
//

import SwiftUI
import Bugsnag

@main
struct SwiftUiExampleApp: App {
    init() {
        let config = BugsnagConfiguration.loadConfig()
        config.endpoints = BugsnagEndpointConfiguration(notify: "https://webhook.site/de2f218a-e13b-4c85-b7d5-096ff165619a",
                                                        sessions: "https://webhook.site/de2f218a-e13b-4c85-b7d5-096ff165619a")
        Bugsnag.start(with: config)
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
