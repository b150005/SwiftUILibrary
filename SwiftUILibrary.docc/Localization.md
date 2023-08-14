# Localization

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->

## String Catalogを使ってローカライズする(Localizing and varying text with a string catalog)

`String Catalog`は、ソースに記述した[`LocalizedStringKey`](https://developer.apple.com/documentation/swiftui/localizedstringkey)を同期しながら管理できる機構です。

これによって、**文字列の言語間のローカライズ対応状況の表示**や**単数・複数形、使用デバイスに応じた文字列の変更**が可能になりました。

### String Catalog(.xcstringsファイル)の追加

- Note: 追加先のディレクトリを右クリック → `New File...`から`String Catalog`を選択 → `.xcstrings`ファイルを作成

### シミュレータによるローカライズ後の文字列の確認

文字列がローカライズされたかどうかを確認する場合は、プロジェクトスキームの言語設定を変更しましょう。

1. `Product` → `Scheme` → `Edit Scheme...`を選択

2. `Run`メニューの`Options`タブの`App Language`項目を確認したい言語に変更

![プロジェクトスキームの言語を変更する](test-translations.png)

## References

- [Localization](https://developer.apple.com/documentation/xcode/localization)
