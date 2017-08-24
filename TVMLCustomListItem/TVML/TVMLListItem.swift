//
//  TVMLListItem.swift
//  Zattoo
//
//  Created by Vitalij Dadaschjanz on 21.07.17.
//  Copyright © 2017 Zattoo, Inc. All rights reserved.
//

import Foundation
import TVMLKit

class TVMLListItem: TVViewElement {
    
    override var name: String {
        return CustomTVMLElement.tvListItem.rawValue
    }
    
    override func dispatchEvent(name eventName: String,
                                canBubble: Bool,
                                cancellable isCancellable: Bool,
                                extraInfo: [String : Any]?,
                                completion: ((Bool, Bool) -> Void)? = nil) {
        
        super.dispatchEvent(name: name, canBubble: canBubble, cancellable: isCancellable, extraInfo: extraInfo, completion: completion)
    }
    
    override func dispatchEvent(type: TVElementEventType,
                                canBubble: Bool,
                                cancellable isCancellable: Bool,
                                extraInfo: [String : Any]?,
                                completion: ((Bool, Bool) -> Void)? = nil) {
        
        super.dispatchEvent(type: type, canBubble: canBubble, cancellable: isCancellable, extraInfo: extraInfo, completion: completion)
    }
    
}
