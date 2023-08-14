# DocCドキュメントを記述する(Writing DocC Documentation)

DocCを用いてドキュメンテーションを作成する

## Overview

[DocC](https://www.swift.org/documentation/docc)は、多彩なAPIドキュメントの作成を可能にする

## プロジェクトへのDocCの追加

`DocC`を用いてプロジェクトのドキュメントを作成する場合、まずはプロジェクトに`.docc`拡張子のフォルダを作成してください。

- Note: プロジェクトを右クリック → `New File...`から`Documentation Catalog`を選択 → `{プロジェクト名}.docc`を作成

## DocCへのArticle(.md)の追加

作成したDocCにArticleを追加する場合、`{プロジェクト名}.docc`に`.md`ファイルを作成してください。

- Note: プロジェクトを右クリック → `New File...`から`Article File`を選択 → `{Article名}.md`を作成

ここで作成したArticleファイルは、他のArticle(=`.md`ファイル)で`<doc:{Article名}.md>`と記述することで遷移ができるようになります。

## References

- SeeAlso: [Markup Formatting Reference - Markup Overview](https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_markup_formatting_ref/)
