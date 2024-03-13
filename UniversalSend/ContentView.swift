//
//  ContentView.swift
//  UniversalSend
//
//  Created by Rahul on 3/13/24.
//

import SwiftUI
import HotKey

struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase

    @State private var lastItem = ""
    let hotKey = HotKey.init(key: .r, modifiers: [.command, .control])

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(lastItem)
            
            Button("Send") { SelectionManager.sendItem(lastItem) }
        }
        .padding()
        .onAppear {
            lastItem = SelectionManager.getLastClipboardItem() ?? ""
            hotKey.keyDownHandler = {
                SelectionManager.sendItem(lastItem)
            }
        }
    }
}

#Preview {
    ContentView()
}
