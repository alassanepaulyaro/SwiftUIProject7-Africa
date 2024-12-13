//
//  CenterModifier.swift
//  SwiftUIProject7-Africa
//
//  Created by Yaro Paul  on 13/12/2024.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
