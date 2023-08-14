# カスタムプロジェクトを始める前に(Getting Started with SwiftUILibrary)

カスタムプロジェクトを作成する前に知っておくこと

@Metadata {
  @PageImage(purpose: icon,
             source: "airplane",
             alt: "The profile images for a plane.")
  @PageColor(blue)
  @PageKind(article)
}

## Overview

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->

## Xcodeの設定

### ソース管理対象外にするファイル・ディレクトリの設定

プロジェクト作成時に自動生成されるファイルにソース管理対象外にすべきファイル・ディレクトリが含まれる場合、以下のどちらかを実施してください。

この設定を行わない場合、**自動生成された全てのファイル・ディレクトリがRemoteリポジトリの作成と同時にPushされてしまう**ことに注意してください。

#### XcodeのIgnored Filesへの記述

プロジェクト作成時にGitの**ソース管理を行う**設定にする場合は、あらかじめXcodeの`Preferences`から**Ignored Files**を設定しましょう。

ソース管理対象外にするファイルは、後述する`.gitignore`ファイルの定義を参考にしてください。

![Xcodeのgitignore](xcode-gitignore.png)

#### .gitignoreファイルの作成および記述

プロジェクト作成時にGitの**ソース管理を行わない**設定にする場合は、`.gitignore`ファイルを作成・記述しましょう。

1. `.gitignore`ファイルの作成

- Note: プロジェクトを右クリック → `New File...`から`Empty`を選択 → `.gitignore`ファイルを作成

![.gitignoreファイルの作成](create-gitignore.png)

2. `.gitignore`ファイルの記述

`SwiftUILibrary`で実際に使用している`.gitignore`を以下に記載します。

[github / gitignore / Swift.gitignore](https://github.com/github/gitignore/blob/main/Swift.gitignore) を参考にしています。

```txt
# --- ファイル情報 ---
# 参考: https://apple.stackexchange.com/questions/14980/why-are-dot-underscore-files-created-and-how-can-i-avoid-them
._*

# --- メタ情報 ---
.*

# --- Xcode ---

## Xcodeユーザー設定ファイルが格納されているディレクトリ
xcuserdata/
## Xcodeのヒープマップファイル
*.hmap
## Xcodeのタイムラインファイル
timeline.xctimeline
## Xcodeのプレイグラウンドワークスペースファイル
playground.xcworkspace
## Xcodeプロジェクトファイル
*.xcodeproj

## --- Xcode 9以降は不要 ---
### XcodeのSCMブループリントファイル
*.xcscmblueprint
### Xcodeのチェックアウトファイル
*.xccheckout

## --- Xcode 4以降は不要 ---
### Xcodeのビルド出力ファイルが格納されているディレクトリ
build/
### Xcodeの派生データディレクトリ
DerivedData/
### Xcodeで移動されたファイルを一時的に格納するディレクトリ
*.moved-aside
### Xcodeのプロジェクト設定ファイル
*.pbxuser
### デフォルトのプロジェクト設定ファイル
!default.pbxuser
### Xcodeのプロジェクトモードファイル
*.mode1v3
*.mode2v3
### デフォルトのプロジェクトモードファイル
!default.mode1v3
!default.mode2v3
### Xcodeのプロジェクトパースペクティブファイル
*.perspectivev3
### デフォルトのプロジェクトパースペクティブファイル
!default.perspectivev3

# --- iOSアプリ ---

## iOSアプリのパッケージファイル
*.ipa
## iOSアプリのデバッグシンボルファイル
*.dSYM.zip
*.dSYM

# --- Swift Package Manager(SPM) ---

## Swiftパッケージが格納されているディレクトリ
Packages/
## Swiftパッケージのピンファイル
Package.pins
## Swiftパッケージの解決ファイル
Package.resolved
## Swiftプロジェクトの管理ファイル
.swiftpm

# --- CocoaPods ---

## CocoaPodsがインストールしたライブラリを格納するディレクトリ(.gitignoreへの追加は非推奨)
# Pods/
## CocoaPodsによって生成されるXcodeワークスペースファイル
*.xcworkspace

# --- Carthage ---

## Carthageのチェックアウトディレクトリ
Carthage/Checkouts
## Carthageのビルドディレクトリ
Carthage/Build/
## Carthageの依存関係ディレクトリ
Dependencies/

# --- Accio dependency management ---

## Accioの設定ファイル
.accio/

# --- fastlane ---

## Fastlaneのレポートファイル
fastlane/report.xml
## Fastlaneのプレビューファイル
fastlane/Preview.html
## Fastlaneのスクリーンショットファイル
fastlane/screenshots/**/*.png
## Fastlaneのテストの実行結果ファイル
fastlane/test_output

# --- Code Injection(iOSInjectionProject) ---

## iOSInjectionProjectのディレクトリ
iOSInjectionProject/
```

### ビルド時にドキュメントも合わせて自動ビルドする

プロジェクトのビルドは`⌘ B`で実行できますが、ドキュメントのビルドは`^ ⇧ ⌘ D`です。

2回に分けて上記のショートカットを入力するのが面倒な場合は、プロジェクトの`TARGETS`を選択し、`Build Documentation During 'Build'`を`Yes`に変更しましょう。

![ビルド時にドキュメントも自動ビルドする](incorporate-documentation-into-build-process.png)

## References
