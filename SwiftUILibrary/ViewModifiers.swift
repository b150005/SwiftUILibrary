//
//  ViewModifiers.swift
//  SwiftUILibrary
//
//  Created by 伊藤 直輝 on 2023/08/16.
//

import SwiftUI

struct NavigationItemContent: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(.horizontal, LayoutParameters.PADDING)
  }
}

struct NavigationItemSectionHeader: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.title2)
      .navigationItemContent()
      .background(.bar)
  }
}

extension View {
  func navigationItemContent() -> some View {
    self.modifier(NavigationItemContent())
  }
  
  func navigationItemSectionHeader() -> some View {
    self.modifier(NavigationItemSectionHeader())
  }
}
