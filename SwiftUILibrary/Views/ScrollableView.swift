//
//  NavigationItemContentView.swift
//  SwiftUILibrary
//
//  Created by 伊藤 直輝 on 2023/07/29.
//

import SwiftUI

struct ScrollableView<ScrollableContent: View>: View {
  let navigationTitle: LocalizedStringKey
  let scrollableContent: ScrollableContent
  let url: URL?

  init(_ navigationTitle: LocalizedStringKey, url: URL?, @ViewBuilder scrollableContent: () -> ScrollableContent) {
    self.navigationTitle = navigationTitle
    self.scrollableContent = scrollableContent()
    self.url = url
  }

  var body: some View {
    ScrollView {
      scrollableContent
    }
    .navigationTitle(navigationTitle)
    .navigationBarTitleDisplayMode(.large)
    .toolbar {
      if let url {
        ToolbarItem(placement: .topBarTrailing) {
          Link(destination: url, label: {
            Label("Link", systemImage: "square.and.arrow.up")
          })
        }
      }
    }
  }
}

#Preview {
  NavigationStack {
    let url: URL? = URL(string: "https://www.apple.com/")
    ScrollableView("Navigation Title Preview", url: url) {
      Text(
        """
        Describe your app’s structure declaratively, much like you declare a view’s appearance. Create a type that conforms to the App protocol and use it to enumerate the Scenes that represent aspects of your app’s user interface.
        SwiftUI enables you to write code that works across all of Apple’s platforms. However, it also enables you to tailor your app to the specific capabilities of each platform. For example, if you need to respond to the callbacks that the system traditionally makes on a UIKit, AppKit, or WatchKit app’s delegate, define a delegate object and instantiate it in your app structure using an appropriate delegate adaptor property wrapper, like UIApplicationDelegateAdaptor.
        
        For platform-specific design guidance, see Platforms in the Human Interface Guidelines.
        """
      )
    }
  }
}
