//
//  UIFont+characterSet.swift
//  Charly
//
//  Created by Dan Hart on 3/11/22.
//

import Foundation
#if canImport(UIKit)
import UIKit

extension UIFont {
    var characterSet: NSCharacterSet {
        fontDescriptor.object(forKey: UIFontDescriptor.AttributeName.characterSet) as! NSCharacterSet
    }
}
#endif
