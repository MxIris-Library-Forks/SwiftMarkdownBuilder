//
//  FILE.swift
//  MarkdownBuilder
//
//  Created by Helge Heß on 15.10.21.
//

#if swift(>=5.1)
import Markdown
import ArrayBuilderModule
#if canImport(Foundation)
  import Foundation
#endif

public extension Link {

#if canImport(Foundation)
  @inlinable
  init(destination: URL, @ArrayBuilder<RecurringInlineMarkup>
                            content: () -> [ RecurringInlineMarkup ])
  {
    self.init(destination: destination.absoluteString, content())
  }
  
  @inlinable
  init<S: StringProtocol>(_ text: S, destination: URL) {
    self.init(destination: destination.absoluteString, Text(String(text)))
  }
#endif

  @inlinable
  init(destination: String?, @ArrayBuilder<RecurringInlineMarkup>
                               content: () -> [ RecurringInlineMarkup ])
  {
    self.init(destination: destination, content())
  }
}

#endif // swift(>=5.1)
