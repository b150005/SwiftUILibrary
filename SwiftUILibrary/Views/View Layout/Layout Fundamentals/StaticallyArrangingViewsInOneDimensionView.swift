//
//  StaticallyArrangingViewsInOneDimensionView.swift
//  SwiftUILibrary
//
//  Created by 伊藤 直輝 on 2023/08/14.
//

import SwiftUI
import HighlightSwift

struct StaticallyArrangingViewsInOneDimensionView: View {
  private struct VAlignment: Identifiable {
    let name: String
    let alignment: VerticalAlignment
    var id: String { name }
  }
  private struct HAlignment: Identifiable {
    let name: String
    let alignment: HorizontalAlignment
    var id: String { name }
  }
  
  private let url: URL? = URL(string: "https://developer.apple.com/documentation/swiftui/layout-fundamentals#statically-arranging-views-in-one-dimension")
  private let verticalAlignments: [VAlignment] = [
    VAlignment(name: ".top", alignment: .top),
    VAlignment(name: ".center", alignment: .center),
    VAlignment(name: ".bottom", alignment: .bottom),
    VAlignment(name: ".firstTextBaseline", alignment: .firstTextBaseline),
    VAlignment(name: ".lastTextBaseline", alignment: .lastTextBaseline)]
  private let horizontalAlignments: [HAlignment] = [
    HAlignment(name: ".leading", alignment: .leading),
    HAlignment(name: ".center", alignment: .center),
    HAlignment(name: ".trailing", alignment: .trailing),
    HAlignment(name: ".listRowSeparatorLeading", alignment: .listRowSeparatorLeading),
    HAlignment(name: ".listRowSeparatorTrailing", alignment: .listRowSeparatorTrailing)]
  
  @State private var hstackAlignment: Int = 0
  @State private var hstackSpacing: CGFloat = 12
  @State private var vstackAlignment: Int = 0
  @State private var vstackSpacing: CGFloat = 12
  
  var body: some View {
    NavigationItemContentView("Statically arranging views in one dimension", url: url) {
      LazyVStack(alignment: .leading, spacing: LayoutParameters.PADDING, pinnedViews: [.sectionHeaders]) {
        // MARK: struct HStack
        Section {
          Group {
            Text(
              """
              [`HStack`](https://developer.apple.com/documentation/swiftui/hstack)は、**ビューの表示時に全ての子ビューを横方向に生成**します。
              [`LazyHStack`](https://developer.apple.com/documentation/swiftui/lazyhstack)とは異なり、**ビューの表示時に全てのSubviewを横方向に一括で表示**します。
              そのため、Subviewが少ない場合や遅延描画をしたくない場合に使用します。
              """
            )
            CodeCard(
              """
              HStack(
                alignment: VerticalAlignment = .center,
                spacing: CGFloat? = nil,
                @ViewBuilder content: () -> Content
              )
              """
            )
            Text(
              """
              alignment
                縦方向の配置ガイド
              spacing
                Subview間の余白
              content
                横方向に並べて表示するSubview
              """
            )
            
            Divider()
            
            HStack(alignment: verticalAlignments[hstackAlignment].alignment, spacing: hstackSpacing) {
              Group {
                Text(PlaceholderString.SHORT)
                Text(PlaceholderString.MID)
              }
              .border(.gray)
            }
            .padding(.all)
            .border(.gray)
            
            CodeCard(
              """
              HStack(alignment: \(verticalAlignments[hstackAlignment].name), spacing: \(hstackSpacing)) {
                Group {
                  Text("\(PlaceholderString.SHORT)")
                  Text("\(PlaceholderString.MID)")
                }
                .boder(.gray)
              }
              .padding(.all)
              .border(.gray)
              """
            )
            
            HStack {
              Text("HStack(alignment:)")
              Spacer()
              Picker("HStack Alignment", selection: $hstackAlignment) {
                ForEach(Array(verticalAlignments.enumerated()), id: \.offset) { index, alignment in
                  Text(alignment.name).tag(index)
                }
              }
            }
            HStack {
              Text("HStack(spacing:)")
              Spacer()
              Text(String(describing: hstackSpacing))
              Slider(value: $hstackSpacing, in: 0...100, step: 1)
            }
          }
          .navigationItemContent()
        } header: {
          Text("`struct HStack`")
            .navigationItemSectionHeader()
        }
        
        // MARK: struct VStack
        Section {
          Group {
            Text(
              """
              [`VStack`](https://developer.apple.com/documentation/swiftui/vstack)は、**ビューの表示時に全ての子ビューを縦方向に生成**します。
              [`LazyVStack`](https://developer.apple.com/documentation/swiftui/lazyvstack)とは異なり、**ビューの表示時に全てのSubviewを縦方向に一括で表示**します。
              そのため、Subviewが少ない場合や遅延描画をしたくない場合に使用します。
              """
            )
            CodeCard(
              """
              VStack(
                alignment: HorizontalAlignment = .center,
                spacing: CGFloat? = nil,
                @ViewBuilder content: () -> Content
              )
              """
            )
            Text(
              """
              alignment
                横方向の配置ガイド
              spacing
                Subview間の余白
              content
                縦方向に並べて表示するSubview
              """
            )
            
            Divider()
            
            VStack(alignment: horizontalAlignments[vstackAlignment].alignment, spacing: vstackSpacing) {
              Group {
                Text(PlaceholderString.SHORT)
                Text(PlaceholderString.MID)
              }
              .border(.gray)
            }
            .padding(.all)
            .border(.gray)
            
            CodeCard(
              """
              VStack(alignment: \(horizontalAlignments[vstackAlignment].name), spacing: \(vstackSpacing)) {
                Group {
                  Text("\(PlaceholderString.SHORT)")
                  Text("\(PlaceholderString.MID)")
                }
                .boder(.gray)
              }
              .padding(.all)
              .border(.gray)
              """
            )
            
            HStack {
              Text("VStack(alignment:)")
              Spacer()
              Picker("VStack Alignment", selection: $vstackAlignment) {
                ForEach(Array(horizontalAlignments.enumerated()), id: \.offset) { index, alignment in
                  Text(alignment.name).tag(index)
                }
              }
            }
            HStack {
              Text("VStack(spacing:)")
              Spacer()
              Text(String(describing: vstackSpacing))
              Slider(value: $vstackSpacing, in: 0...60, step: 1)
            }
          }
          .navigationItemContent()
        } header: {
          Text("`struct VStack`")
            .navigationItemSectionHeader()
        }
      }
    }
  }
}

#Preview {
  NavigationStack {
    StaticallyArrangingViewsInOneDimensionView()
  }
}
