//
//  CreatingAnAppView.swift
//  SwiftUILibrary
//
//  Created by 伊藤 直輝 on 2023/08/05.
//

import SwiftUI
import HighlightSwift

struct CreatingAnAppView: View {
  let url: URL? = URL(string: "https://developer.apple.com/documentation/swiftui/app-organization#creating-an-app")
  let padding: CGFloat = 10
  
  var body: some View {
    NavigationItemContentView("Creating an app", url: url) {
      LazyVStack(alignment: .leading, spacing: padding, pinnedViews: [.sectionHeaders]) {
        Section {
          Group {
            Text(
              """
              アプリの**エントリーポイント**となる`App`構造体には`@main`属性を付与して明示しなければなりません。
              また、`App`プロトコルに準拠した構造体は、`some Scene`を返す`body`プロパティを実装する必要があります。
              `body`プロパティで定義する`Scene`インスタンスはビュー階層のRoot Viewとしてシステムのライフサイクル管理下に置かれます。
              """
            )
            CodeCard(
              """
              @main
              struct SwiftUILibraryApp: App {
                var body: some Scene {
                  WindowGroup {
                    ContentView()
                  }
                }
              }
              """
            )
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal, padding)
        } header: {
          Text("`protocol App`")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, padding)
            .background(.bar)
        }
      }
    }
  }
}

#Preview {
  NavigationStack {
    CreatingAnAppView()
  }
}
