# ビューのレイアウト(View layout)

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->

## ✅ レイアウトの基礎(Layout fundamentals)

### レイアウトを選ぶ(Choosing a layout)

### 1次元方向にビューを静的配置する(Statically arranging views in one dimension)

#### HStack

[`HStack`](https://developer.apple.com/documentation/swiftui/hstack)は、**ビューの表示時に全ての子ビューを横方向に生成**します。

#### VStack

 [`VStack`](https://developer.apple.com/documentation/swiftui/vstack)は、**ビューの表示時に全ての子ビューを縦方向に生成**します。

### 1次元方向にビューを動的配置する(Dynamically arranging views in one dimension)

#### LazyHStack

[`LazyHStack`](https://developer.apple.com/documentation/swiftui/lazyhstack)は、**画面上に含まれる子ビューのみを横方向に生成**します。

#### LazyVStack

 [`LazyVStack`](https://developer.apple.com/documentation/swiftui/lazyvstack)は、**画面上に含まれる子ビューのみを縦方向に生成**します。

```swift
init(
  alignment: HorizontalAlignment = .center,
  spacing: CGFloat? = nil,
  pinnedViews: PinnedScrollableViews = .init(),
  @ViewBuilder content: () -> Content
)
```

#### PinnedScrollableViews

[`PinnedScrollableViews`](https://developer.apple.com/documentation/swiftui/pinnedscrollableviews)は、スクロール時に`ScrollView`の境界(ヘッダー/フッター)に`Section`ビューを固定表示するクラス変数の集合です。

### 2次元方向にビューを静的配置する(Statically arranging views in two dimensions)

#### Grid

#### GridRow

#### .gridCellColumns修飾子

#### .gridCellAnchor修飾子

#### .gridCellUnsizedAxes修飾子

#### .gridColumnAlignment修飾子

### 2次元方向にビューを動的配置する(Dynamically arranging views in two dimensions)

#### LazyHGrid

#### LazyVGrid

#### GridItem

### ビューを重ねる(Layering views)

#### ZStack

#### .zIndex修飾子

#### .background修飾子

#### .overlay修飾子

#### backgroundMaterialプロパティ

#### .containerBackground修飾子

#### ContainerBackgroundPlacement

### 画面にフィットするレイアウトを自動選択する(Automatically choosing the layout that fits)

#### ViewThatFits

### ビュー同士を区切る(Separators)

#### Spacer

#### Divider

## ✅ レイアウトの調整(Layout adjustments)

### ビューにパディングを追加する(Adding padding around a view)

#### .padding修飾子

#### .scenePadding修飾子

#### ScenePadding

### ビューのサイズを変更する(Influencing a view's size)

#### .frame修飾子

#### .containerRelativeFrame修飾子

#### .fixedSize修飾子

#### .layoutPriority修飾子

### ビューの配置を調整する(Adjusting a view's position)

#### .position修飾子

#### .offset修飾子

### ビューを寄せる(Aligning views)

#### .alignmentGuide修飾子

#### Alignment

#### HorizontalAlignment

#### VerticalAlignment

#### AlignmentID

#### ViewDimensions

### ビューのマージンを設定する(Setting margins)

#### .contentMargins修飾子

#### ContentMarginPlacement

### セーフエリアに配置する(Staying in the safe areas)

#### .ignoresSafeArea修飾子

#### .safeAreaInset修飾子

#### .safeAreaPadding修飾子

#### SafeAreaRegions

### レイアウト方向を設定する(Setting a layout direction)

#### .layoutDirectionBehavior修飾子

#### LayoutDirectionBehavior

#### layoutDirectionプロパティ

#### LayoutDirection

### インターフェースの特性に対応する(Reacting to interface characteristics)

#### isLuminanceReducedプロパティ

#### displayScaleプロパティ

#### pixelLengthプロパティ

#### horizontalSizeClassプロパティ

#### verticalSizeClassプロパティ

#### UserInterfaceSizeClass

### エッジとインセットを取得する(Accessing edges and regions)

#### Edge

#### HorizontalEdge

#### VerticalEdge

#### EdgeInsets

## ✅ レイアウトのカスタム(Custom layout)

### カスタムレイアウトのコンテナを作成する(Creating a custom layout container)

#### Layout

#### LayoutSubview

#### LayoutSubviews

### カスタムレイアウトを調整する(Configuring a custom layout)

#### LayoutProperties

#### ProposedViewSize

#### ViewSpacing

### カスタムレイアウト内のビューに値を紐づける(Associating values with views in a custom layout)

#### .layoutValue修飾子

#### LayoutValueKey

### 条件によってレイアウトを変える(Transitioning between layout types)

#### AnyLayout

#### HStackLayout

#### VStackLayout

#### ZStackLayout

#### GridLayout

## ✅ リスト(Lists)

### リストを作成する(Creating a list)

#### List

#### .listStyle修飾子

#### Section

[`Section`](https://developer.apple.com/documentation/swiftui/section)はコンテンツをセクション単位にまとめ、複数のコンテンツを構造化するコンテナの役割を担います。

### リスト項目をイテレートする(Iterating over list content)

#### ForEach

#### DynamicViewContent

### 段階的にリスト項目を表示する(Disclosing information progressively)

#### OutlineGroup

#### DisclosureGroup

#### .disclosureGroupStyle修飾子

### リスト項目のビジュアルを調整する(Configuring rows)

#### .listRowInsets修飾子

#### .listRowHoverEffect修飾子

#### .listRowHoverEffectDisabled修飾子

#### .listItemTint修飾子

#### ListItemTint

#### defaultMinListRowHeightプロパティ

### リスト項目間の区切り線のビジュアルを調整する(Configuring separators)

#### .listRowSeparatorTint修飾子

#### .listSectionSeparatorTint修飾子

#### .listRowSeparator修飾子

#### .listSectionSeparator修飾子

### リストのヘッダーを調整する(Configuring headers)

#### .headerProminence修飾子

#### headerProminenceプロパティ

#### Prominence

#### defaultMinListHeaderHeightプロパティ

### リストの余白を調整する(Configuring spacing)

#### .listRowSpacing修飾子

#### .listSectionSpacing修飾子

#### ListSectionSpacing

### リストの背景を調整する(Configuring backgrounds)

#### .listRowBackground修飾子

#### [macOS] .alternatingRowBackgrounds修飾子

#### [macOS] AlternatingRowBackgroundBehavior

#### backgroundProminenceプロパティ

#### BackgroundProminence

### リスト項目にバッジを表示する(Displaying a badge on a list item)

#### .badge修飾子

#### .badgeProminence修飾子

#### badgeProminenceプロパティ

#### BadgeProminence

### リストのインタラクションを調整する(Configuring interactions)

#### .swipeActions修飾子

#### .selectionDisabled修飾子

### リストをリフレッシュする(Refreshing a list's content)

#### .refreshable修飾子

#### refreshableプロパティ

#### RefreshActions

### リストを編集する(Editing a list)

#### .moveDisabled修飾子

#### .deleteDisabled修飾子

#### editModeプロパティ

#### EditMode

#### EditActions

#### EditableCollectionContent

#### IndexedIdentifierCollection

## ✅ テーブル(Tables)

### テーブルを作成する(Creating a table)

#### Table

#### .tableStyle修飾子

### 列を作成する(Creating columns)

#### TableColumn

#### TableColumnContent

#### TableColumnAlignment

#### TableColumnBuilder

### カスタム列を作成する(Customizing columns)

#### .tableColumnHeaders修飾子

#### TableColumnCustomization

#### TableColumnCustomizationBehavior

### 行を作成する(Creating rows)

#### TableRow

#### TableRowContent

#### TableHeaderRowContent

#### TupleTableRowContent

#### TableForEachContent

#### EmptyTableRowContent

#### DynamicTableRowContent

#### TableRowBuilder

### テーブルを段階的に表示する(Adding progressive disclosure)

#### DisclosureTableRow

#### TableOutlineGroupContent

## ビューのグループ化(View groupings)

### ビューを一つの単位にまとめる(Collecting views into a unit)

#### Group

[`Group`](https://developer.apple.com/documentation/swiftui/group)は複数のビューを1つのインスタンスとして扱うことで、その**メンバ全体にモディファイアを付与することができる**。

### ビューを一つのボックスに集約する(Grouping views into a box)

#### GroupBox

### 関連するコントロールグループを表示する(Presenting a group of controls)

#### ControlGroup

## スクロールビュー(Scroll views)

### スクロールビューを作成する(Creating a scroll view)

#### ScrollView

[`ScrollView`](https://developer.apple.com/documentation/swiftui/scrollview)は垂直・水平方向のスクロールを可能にするビューですが、ズーム機能はありません。

#### ScrollViewReader

#### ScrollViewProxy

### スクロール位置を管理する(Managing scroll position)

### スクロール先を決定する(Defining scroll targets)

#### ScrollTarget

#### ScrollTargetBehaviorContext

#### PagingScrollTargetBehavior

#### ViewAlignedScrollTargetBehavior

### スクロールにアニメーションをつける(Animating scroll transitions)

#### ScrollTransitionConfiguration

### スクロールインジケータを表示する(Showing scroll indicators)

#### ScrollIndicatorVisibility

### スクロールコンテンツの可視性を管理する(Managing content visibility)

### スクロールを無効化する(Disabling scrolling)

### スクロールの跳ね返りを調整する(Configuring scroll bounce behavior)

#### ScrollBounceBehavior

### スクロールとソフトウェアキーボードの相互作用(Interacting with a software keyboard)

#### ScrollDismissesKeyboardMode
