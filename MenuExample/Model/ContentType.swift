//
//  Copyright © 2014 Yalantis
//  Licensed under the MIT license: http://opensource.org/licenses/MIT
//  Latest version can be found at http://github.com/yalantis/Side-Menu.iOS
//

import Foundation

@objc enum ContentType: Int {
    case Music
    case Films
}

//prefix func ! (value: ContentType) -> ContentType {
//    switch value {
//        case .Music:
//            return .Films
//        case .Films:
//            return .Music
//    }
//}

// @objc enum ContentType: Int {
//    case Music
//    case Films
//    
////    func name() -> String
////    {
////        switch self
////        {
////            case .Music: return "content_music"
////            case .Films: return "content_films"
////        }
////    }
//}
////
// @objc prefix func ! (value: ContentType) -> ContentType {
//    switch value {
//        case .Music:
//            return .Films
//        case .Films:
//            return .Music
//    }
//}