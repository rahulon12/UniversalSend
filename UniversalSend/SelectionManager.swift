//
//  SelectionManager.swift
//  UniversalSend
//
//  Created by Rahul on 3/13/24.
//

import ApplicationServices
import Cocoa

struct SelectionManager {
    static func getLastClipboardItem() -> String? {
        return NSPasteboard.general.string(forType: .string)
    }

    static func sendItem(_ text: String) {
        let service = NSSharingService(named: .composeMessage)
        service?.perform(withItems: [text])
    }
}
