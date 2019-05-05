//
//  LinkDisplayMechanism.swift
//  iTunes Link Radar
//
//  Created by John Brayton on 5/5/19.
//  Copyright © 2019 John Brayton. All rights reserved.
//

import Foundation

enum LinkDisplayMechanism : CaseIterable {
    
    case openUrl
    case universalLink
    case safariViewController
    
    var description: String {
        switch self {
        case .openUrl:
            return String.localizedStringWithFormat("Call openURL with no options")
        case .universalLink:
            return String.localizedStringWithFormat("Call openURL with universalLinksOnly")
        case .safariViewController:
            return String.localizedStringWithFormat("Present a Safari View Controller")
        }
    }
    
}
