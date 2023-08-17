//
//  LayoutFundamentalsView.swift
//  SwiftUILibrary
//
//  Created by 伊藤 直輝 on 2023/08/14.
//

import SwiftUI

struct LayoutFundamentalsView: View {
  let url: URL? = URL(string: "https://developer.apple.com/documentation/swiftui/layout-fundamentals")
  
  var body: some View {
    NavigationItemContentView("Layout fundamentals", url: url) {
      LazyVStack(alignment: .leading, spacing: LayoutParameters.PADDING, pinnedViews: [.sectionHeaders]) {
        Section {
          Text(
            """
            レイアウトコンテナを使うことで、UI要素の配置を調整することができます。
            """
          )
          .navigationItemContent()
        } header: {
          Text("Overview")
            .navigationItemSectionHeader()
        }
      }
    }
  }
}

#Preview {
  NavigationStack {
    LayoutFundamentalsView()
  }
}
