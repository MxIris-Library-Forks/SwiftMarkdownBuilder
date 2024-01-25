//
//  Font.swift
//  MarkdownBuilder
//
//  Created by Helge Heß on 15.10.21.
//

public enum Font: Equatable {

  // `#`
  case h1

  // `##`
  case h2

  // `###`
  case h3

  // `####`
  case h4
}

extension Font {
  
  var level : Int {
    switch self {
      case .h1 : return 1
      case .h2      : return 2
      case .h3     : return 3
      case .h4     : return 4
    }
  }
}
