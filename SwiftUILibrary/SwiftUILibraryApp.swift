//
//  SwiftUILibraryApp.swift
//  SwiftUILibrary
//
//  Created by 伊藤 直輝 on 2023/07/22.
//

import SwiftUI
import SwiftData

@main
struct SwiftUILibraryApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
    .modelContainer(for: Item.self)
  }
}
