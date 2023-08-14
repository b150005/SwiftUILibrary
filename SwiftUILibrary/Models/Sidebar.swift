//
//  Sidebar.swift
//  SwiftUILibrary
//
//  Created by 伊藤 直輝 on 2023/07/24.
//

import SwiftUI

/// サイドバーに表示する項目の大分類
//enum Sidebar {
//  case essentials(Essentials)
//  case appStructure(AppStructure)
//  case dataAndStorage(DataAndStorage)
//  case views(Views)
//  case viewLayout(ViewLayout)
//  case eventHandling(EventHandling)
//  case accessibility(Accessibility)
//  case frameworkIntegration(FrameworkIntegration)
//  case toolSupport(ToolSupport)
//  case articles(Articles)
//}

struct SidebarSection {
  let id: UUID = UUID()
  let title: Text
  let contents: [SidebarContent]
}

protocol SidebarContent {

}

struct Essentials: SidebarContent {
  let title: Text
}

/// サイドバーに表示する`Essentials`の中分類
//enum Essentials {
//  case introducingSwiftUI
//  case learningSwiftUI
//  case exploringSwiftUISampleApps
//  case SwiftUIUpdates
//}

/// サイドバーに表示する`App Structure`の中分類
enum AppStructure {
  case appOrganization
  case scenes
  case windows
  case immersiveSpaces
  case documents
  case navigation
  case modalPresentations
  case toolbars
  case search
  case appExtensions
}

/// サイドバーに表示する`Data And Storage`の中分類
enum DataAndStorage {
  case modelData
  case environmentValues
  case preferences
  case persistentStorage
}

/// サイドバーに表示する`Views`の中分類
enum Views {
  case viewFundamentals
  case viewConfiguration
  case viewStyles
  case animations
  case textInputAndOutput
  case images
  case controlsAndIndicators
  case menusAndCommands
  case shapes
  case drawingAndGraphics
}

/// サイドバーに表示する`View Layout`の中分類
enum ViewLayout {
  case layoutFundamentals
  case layoutAdjustments
  case customLayout
  case lists
  case tables
  case viewGroupings
  case scrollViews
}

/// サイドバーに表示する`Event Handling`の中分類
enum EventHandling {
  case gestures
  case inputEvents
  case clipboard
  case dragAndDrop
  case focus
  case systemEvents
}

/// サイドバーに表示する`Accessibility`の中分類
enum Accessibility {
  case accessibilityFundamentals
  case accessibleAppearance
  case accessibleControls
  case accessibleDescriptions
  case accessibleNavigation
}

/// サイドバーに表示する`Framework Integration`の中分類
enum FrameworkIntegration {
  case AppKitIntegration
  case UIKitIntegration
  case WatchKitIntegration
  case technologySpecificViews
}

/// サイドバーに表示する`Tool Support`の中分類
enum ToolSupport {
  case previewsInXcode
  case XcodeLibraryCustomization
}

/// サイドバーに表示する`Articles`の中分類
enum Articles {

}
