//
//  Text+.swift
//  ProductListing
//
//  Created by ReynardVN8 on 13/02/25.
//

import SwiftUICore

extension String {
    func multiColor(of: Character, color: Color) -> NSMutableAttributedString{
        let charIndex = self.enumerated().compactMap {
            $0.element == of ? $0.offset : nil
        }
        let text = self.replacingOccurrences(of: String(of), with: "")
        let attrText = NSMutableAttributedString(string: text)
        if charIndex.count > 1 {
            for i in stride(from: 0, to: charIndex.count, by: 2) {
                if i == 0 {
                    attrText.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range:NSRange(location: charIndex[i], length: (charIndex[i+1]-1) - charIndex[i]))
                }else {
                    attrText.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range:NSRange(location: charIndex[i]-2, length: (charIndex[3]-1) - charIndex[i]))
                }
            }
        }
        return attrText
    }
}
