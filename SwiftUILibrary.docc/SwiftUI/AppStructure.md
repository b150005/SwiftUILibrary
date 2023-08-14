# アプリの仕組み(App structure)

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

- [](https://developer.apple.com/documentation/)

## ✅ アプリ構成(App organization)

### アプリを開発する(Creating an app)

#### App

### [iOS/iPadOS] iOS/iPadOS向けのアプリを開発する(Targeting iOS and iPadOS)

#### UIApplicationDelegateAdaptor

### [macOS] macOS向けのアプリを開発する(Targeting macOS)

#### NSApplicationDelegateAdaptor

## ✅ シーン(Scenes)

### シーンを作成する(Creating scenes)

#### Scene

#### SceneBuilder

### シーンのライフサイクルを監視する

#### scenePhaseプロパティ

#### ScenePhase

### [macOS] 設定ウィンドウを管理する(Managing a settings window)

#### Settings

#### SettingsLink

### [macOS] メニューバーにアプリへのアクセス可能なシーンを追加する(Creating a menu bar extra)

#### MenuBarExtra

#### .menuBarExtraStyle修飾子

#### MenuBarExtraStyle

## ✅ ウィンドウ(Windows)

### ウィンドウを作成する(Creating windows)

#### WindowGroup

#### [macOS] Window

#### [macOS] WindowStyle

#### [macOS] .windowStyle修飾子

### [macOS] ウィンドウのツールバーをカスタムする(Styling the associated toolbar)

#### .windowToolbarStyle修飾子

#### WindowToolbarStyle

### ウィンドウを開く(Opening windows)

#### supportsMultipleWindowsプロパティ

#### openWindowプロパティ

#### OpenWindowAction

### ウィンドウを閉じる(Closing windows)

#### dismissWindowプロパティ

#### DismissWindowAction

#### dismissプロパティ

#### DismissAction

#### DismissBehavior

### ウィンドウの位置とサイズを調整する(Positioning and sizing a window)

#### [macOS] .defaultPosition修飾子

#### .defaultSize修飾子

#### .windowResizability修飾子

#### WindowResizability

## ✅ ドキュメント(Documents)

### ドキュメントを作成する(Creating a document)

#### DocumentGroup

### 構造体にドキュメントデータを格納する(Storing document data in a structure instance)

#### FileDocument

#### FileDocumentConfiguration

### ドキュメント設定を取得する(Accessing document configuration)

#### documentConfigurationプロパティ

#### DocumentConfiguration

### ドキュメントを読み書きする(Reading and writing documents)

#### FileDocumentReadConfiguration

#### FileDocumentWriteConfiguration

### ドキュメントを開く(Opening a document programmatically)

#### newDocumentプロパティ

#### NewDocumentAction

#### openDocumentプロパティ

#### OpenDocumentAction

### ドキュメントの名前を変更する(Renaming a document)

#### RenameButton

#### .renameAction修飾子

#### .renameAction修飾子

#### renameプロパティ

#### RenameAction

## ✅ 画面遷移(Navigation)

- [Migrating to new navigation types](https://developer.apple.com/documentation//migrating-to-new-navigation-types)

### 複数のカラムで遷移元と遷移先のビューを表示する(Presenting views in columns)

#### NavigationSplitView

[`NavigationSplitView`](https://developer.apple.com/documentation//navigationsplitview)は、**Sidebar/Detailの2列**あるい**はSidebar/Content/Detailの3列**で構成されます。

#### .navigationSplitViewStyle修飾子

#### .navigationSplitViewColumnWidth修飾子

#### NavigationSplitViewVisibility

#### NavigationLink

[`NavigationLink`](https://developer.apple.com/documentation/swiftui/navigationlink)は、`NavigationStack`や`NavigationSplitView`の中に組み込むことでビューに遷移するリンクです。

### 1つのカラムで遷移元と遷移先のビューをスタックする(Stacking views in one column)

- Important: 「スタック」とは、**前後方向にビューを重ねる**ことを指します。

#### NavigationStack

#### NavigationPath

#### .navigationDestination修飾子

### 画面が小さい場合に折りたたむカラムを管理する(Managing column collapse)

#### NavigationSplitViewColumn

### 遷移先コンテンツにタイトルを設定する(Setting titles for navigation content)

[Configure your apps navigation titles](https://developer.apple.com/documentation/swiftui/configure-your-apps-navigation-titles/)

#### .navigationTitle修飾子

`.navigationTitle`修飾子は、**Navigationコンテナ内のビュー**に対して付与することで、ツールバーにタイトルを表示します。

- Warning: `.navigationTitle`や`.toolbar`は**Navigationコンテナ内でないと機能しない**ため、Previewで確認する場合は以下のようにNavigationコンテナに入れましょう。

```swift
#Preview {
  NavigationStack {
    ContentViewWithNavigationTitleOrButtons()
  }
}
```

#### .navigationSubtitle修飾子

#### .navigationDocument修飾子

### ナビゲーションバーを調整する(Configuring the navigation bar)

#### .navigationBarBackButtonHidden修飾子

#### .navigationBarTitleDisplayMode修飾子

#### NavigationBarItem

### サイドバーを調整する(Configuring the sidebar)

#### sidebarRowSizeプロパティ

#### SidebarRowSize

### タブでビューを切り替える(Presenting views in tabs)

#### TabView

#### .tabViewStyle修飾子

#### .tabItem修飾子

### ビューを複数のペインで表示する(Displaying views in multiple panes)

- Important: 「ペイン」とは、**ウィンドウ内の区切られた領域**を表します。

#### HSplitView

#### VSplitView

## ✅ モーダル表示(Modal presentations)

### [macOS] ダイアログの深刻度を設定する(Configuring a dialog)

#### DialogSeverity

### シート/カバー/ポップオーバーを表示する(Showing a sheet, cover, or popover)

#### .sheet修飾子

#### [macOS] .fullScreenCover修飾子

#### .popover修飾子

#### PopoverAttachmentAnchor

### 表示サイズを調整する(Adapting a presentation to size classes)

#### .presentationCompactAdaption修飾子

#### PresentationAdaption

### シートの高さを調整する(Configuring a sheet's height)

#### .presentationDetents修飾子

#### .presentationContentInteraction修飾子

#### .presentationDragIndicator修飾子

#### PresentationDetent

#### CustomPresentationDetent

#### PresentationContentInteraction

### シートとその背景のビジュアルを調整する(Styling a sheet and its background)

#### .presentationCornerRadius修飾子

#### .presentationBackground修飾子

#### .presentationBackgroundInteraction修飾子

#### PresentationBackgroundInteraction

### アラートを表示する(Presenting an alert)

#### .alert修飾子

### アクションの確認ダイアログを表示する(Getting confirmation for an action)

#### .confirmationDialog修飾子

### ダイアログを調整する(Configuring a dialog)

#### .dialogIcon修飾子

#### .dialogSeverity修飾子

#### .dialogSuppressionToggle修飾子

### ファイルをエクスポートする(Exporting to file)

#### .fileExporter修飾子

#### .fileExporterFilenameLabel修飾子

### ファイルからインポートする(Importing from file)

#### .fileImporter修飾子

### ファイルを移動させる(Moving a file)

#### .fileMover修飾子

### ファイルダイアログを調整する(Configuring a file dialog)

#### .fileDialogBrowserOptions修飾子

#### .fileDialogConfirmationLabel修飾子

#### .fileDialogCustomizationID修飾子

#### .fileDialogDefaultDirectory修飾子

#### .fileDialogImportsUnresolvedAliases修飾子

#### .fileDialogMessage修飾子

#### .fileDialogURLEnabled修飾子

#### FileDialogBrowserOptions

### インスペクタを表示する(Presenting an inspector)

#### .inspector修飾子

#### .inspectorColumnWidth修飾子

### ビューを非表示にする(Dismissing a presentation)

#### isPresentedプロパティ

#### dismissプロパティ

#### DismissAction

#### .interactiveDismissDisabled修飾子

## ✅ ツールバー(Toolbars)

- [Toolbars - Human Interface Guideline](https://developer.apple.com/design/human-interface-guidelines/toolbars)

- Important: 「ツールバー」とは、アプリの上部または下部に配置する、**使用頻度の高いコントロールにアクセスするためのビュー**です。

### ツールバーに配置するコンテンツを決める(Populating a toolbar)

#### .toolbar修飾子

#### ToolbarItem

[`ToolbarItem`](https://developer.apple.com/documentation/swiftui/toolbaritem)は、ツールバーやナビゲーションバーに設置するコンテンツのビューやその配置を保持するモデルです。

#### ToolbarItemGroup

#### ToolbarItemPlacement

[`ToolbarItemPlacement`](https://developer.apple.com/documentation/swiftui/toolbaritemplacement)は、ツールバーのコンテンツの配置を定義する構造体です。
コンテンツの**意味と環境に基づいて配置場所を定義**するプロパティと、**位置を明示して配置場所を定義**するプロパティの2種類が用意されています。

#### ToolbarContent

#### ToolbarContentBuilder

### カスタム可能なツールバーを構築する(Populating a customizable toolbar)

#### CustomizableToolbarContent

#### ToolbarCustomizationBehavior

#### ToolbarCustomizationOptions

### ツールバーの可視性を設定する(Setting toolbar visibility)

#### ToolbarPlacement

### 役割に応じてツールバーのコンテンツを指定する(Specifying the role of toolbar content)

#### .toolbarRole修飾子

#### ToolbarRole

### ツールバーのビジュアルを変更する(Styling a toolbar)

#### .toolbarBackground修飾子

#### .toolbarColorScheme修飾子

#### [macOS] .windowToolbarStyle

#### [macOS] WindowToolbarStyle

### ツールバーのタイトルの表示スタイルを調整する(Configuring the toolbar title display mode)

#### .toolbarTitleDisplayMode修飾子

#### ToolbarTitleDisplayMode

### ツールバーのタイトルにメニューを設定する(Setting the toolbar title menu)

#### .toolbarTitleMenu修飾子

#### ToolbarTitleMenu

## ✅ 検索(Search)

### データモデルを検索する(Searching your app's data model)

#### .searchable修飾子

#### SearchFieldPlacement

### 検索候補を作成する(Making search suggestions)

#### .searchSuggestions修飾子

#### .searchCompletion修飾子

#### SearchSuggestionsPlacement

### 検索範囲を制限する(Limiting search scope)

#### .searchScopes修飾子

#### SearchScopeActivation

### 検索状態を特定し、検索を活性・非活性化する(Detecting, activating, and dismissing search)

#### isSearchingプロパティ

#### dismissSearchプロパティ

#### DismissSearchAction

### ビューに埋め込まれたテキストを検索・置換する(Searching for text in a view with find and replace)

#### .findNavigator修飾子

#### .findDisabled修飾子

#### .replaceDisabled修飾子

## ✅ アプリ拡張(App extensions)

### ウィジェットを作成する(Creating widgets)

#### Widget

#### WidgetBundle

#### LimitedAvailabilityConfiguration

#### WidgetConfiguration

#### EmptyWidgetConfiguration

### ウィジェットにラベルを付ける(Labeling a widget)

#### .widgetLabel修飾子

### ウィジェットにアクセントを付ける(Controlling the accented group)

#### .widgetAccentable修飾子

### Dynamic Islandの配置を変更する(Managing placement in the Dynamic Island)

- Important: [`Dynamic Island`](https://developer.apple.com/news/?id=mis6swzt) は、`iPhone 14 Pro` / `iPhone 14 Pro Max`から採用された、インカメラのパンチホール付近の表示スペースです。

![Dynamic Island](dynamic-island.png)

#### .dynamicIsland修飾子

## References

- [コンポーネントのまとめ - @MszPro](https://.mszpro.com/)
