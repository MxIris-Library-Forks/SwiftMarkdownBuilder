//
//  FILE.swift
//  MarkdownBuilder
//
//  Created by Helge Heß on 15.10.21.
//

#if swift(>=5.1)
import Markdown
import ArrayBuilderModule

public extension Paragraph { // BlockMarkup, BasicInlineContainer

  @inlinable
  init(@ArrayBuilder<InlineMarkup> content: () -> [ InlineMarkup ]) {
    self.init(content())
  }
}
#endif // swift(>=5.1)
