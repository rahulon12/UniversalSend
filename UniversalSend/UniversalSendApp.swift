//
//  UniversalSendApp.swift
//  UniversalSend
//
//  Created by Rahul on 3/13/24.
//

import SwiftUI

@main
struct UniversalSendApp: App {
    var body: some Scene {
        MenuBarExtra("UniversalSend") {
            ContentView()
                .frame(width: 200, height: 200)
        }
        .menuBarExtraStyle(.window)
    }
}
