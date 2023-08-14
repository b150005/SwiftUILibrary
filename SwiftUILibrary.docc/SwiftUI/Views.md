# ビュー(Views)

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->

## ビューの基礎(View fundamentals)

### ビューを作成する(Creating a view)

#### View

#### ViewBuilder

### ビューをカスタムする(Modifying a view)

#### .modifier修飾子

#### ViewModifier

#### EmptyModifier

#### ModifiedContent

#### EnvironmentalModifier

### ビューのライフサイクルに応じた処理を実行する(Responding to view life cycle updates)

#### .onAppear修飾子

#### .onDisappear修飾子

#### .task修飾子

### ビュー階層を管理する(Managing the view hierarchy)

#### .id修飾子

#### .tag修飾子

#### .equatable修飾子

### View以外の基底ビュー(Supporting view types)

#### AnyView

#### EmptyView

#### EquatableView

#### SubscriptionView

#### TupleView

## ビューの設定(View configuration)



## ビューのスタイル(View styles)

## アニメーション(Animations)

## ✅ テキストの入出力(Text input and output)

### テキストを表示する(Displaying text)

#### Text

#### Label

#### .labelStyle修飾子

### テキストの入力を受け取る(Getting text input)

#### TextField

#### .textFieldStyle修飾子

#### SecureField

#### TextEditor

### テキストの選択を可能にする(Selecting text)

#### .textSelection修飾子

#### TextSelectability

### フォントを適用する(Setting a font)

#### .font修飾子

#### .fontDesign修飾子

#### .fontWeight修飾子

#### .fontWidth修飾子

#### fontプロパティ

#### Font

### テキストのサイズを調整する(Adjusting text size)

#### .textScale修飾子

#### .dynamicTypeSize修飾子

#### dynamicTypeSizeプロパティ

#### DynamicTypeSize

#### ScaledMetric

### テキストのスタイルを変える(Controlling text style)

#### .bold修飾子

#### .italic修飾子

#### .underline修飾子

#### .strikethrough修飾子

#### .textCase修飾子

#### textCaseプロパティ

#### .monospaced修飾子

#### .monospaceDigit修飾子

### テキストのレイアウトを管理する(Managing text layout)

#### .truncationMode修飾子

#### truncationModeプロパティ

#### .allowsTightening修飾子

#### allowsTighteningプロパティ

#### .minimumScaleFactor修飾子

#### minimumScaleFactorプロパティ

#### .baselineOffset修飾子

#### .kerning修飾子

#### .tracking修飾子

#### .flipsForRightToLeftLayoutDirection修飾子

#### TextAlignment

### 複数行のテキストに対して行数を制限する(Limiting line count for multiline text)

#### .lineLimit修飾子

#### lineLimitプロパティ

### 複数行のテキストのフォーマットを調整する(Formatting multiline text)

#### .lineSpacing修飾子

#### lineSpacingプロパティ

#### .multilineTextAlignment修飾子

#### multilineTextAlignmentプロパティ

### テキストの入力方法を管理する(Managing text entry)

#### .autocorrectionDisabled修飾子

#### autocorrectionDisabledプロパティ

#### .keyboardType修飾子

#### .scrollDismissedKeyboard修飾子

#### .textContentType修飾子

#### .textInputAutocapitalization修飾子

#### TextInputAutocapitalization

### テキストを音声で入力する(Dictating text)

#### .searchDictationBehavior修飾子

#### TextInputDictationActivation

#### TextInputDictationBehavior

### テキストを用いて等価性を明示する(Specifying tet equivalents)

#### .typeSelectEquivalent修飾子

### テキストをローカライズする(Localizing text)

#### LocalizedStringKey

#### localeプロパティ

#### .typesettingLanguage修飾子

#### TypesettingLanguage

## コントロールとインジケータ(Controls and indicators)

### ボタンを作成する(Creating buttons)

#### Button

#### ButtonBorderShape

#### ButtonRole

#### ButtonRepeatBehavior

### 固有の目的をもつボタンを作成する(Creating special-purpose)

#### EditButton

#### PasteButton

#### RenameButton

### 他のコンテンツへのリンクを作成する(Linking to other content)

#### Link

#### ShareLink

#### SharePreview

#### HelpLink

### 数に関する入力を受け取る(Getting numeric inputs)

#### Slider

#### Stepper

#### Toggle

### コンテンツを選択する(Choosing from a set of options)

#### Picker

#### PaletteSelectionEffect

### 日付を選択する(Choosing dates)

#### DatePicker

#### MultiDatePicker

### 色を選択する(Choosing a color)

#### ColorPicker

### 値をインジケータで表示する(Indicating a value)

#### Gauge

#### ProgressView

#### DefaultDateProgressLabel

### コンテンツが利用不可であることを表示する(Indicating missing content)

#### ContentUnavailableView

### ハプティクスを提供する(Providing haptic feedback)

#### SensoryFeedback

### コントロールのサイズを変更する(Sizing controls)

### コントロールを有効化する(Activating controls)

## メニューとコマンド(Menus and commands)

## 図形(Shapes)

## 描画と特殊効果(Drawing and graphics)
