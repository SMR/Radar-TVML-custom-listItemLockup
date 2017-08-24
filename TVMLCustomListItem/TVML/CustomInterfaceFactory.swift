//
//  CustomInterfaceFactory.swift
//  Zattoo
//
//  Created by Vitalij Dadaschjanz on 24.08.17.
//  Copyright © 2017 Zattoo, Inc. All rights reserved.
//

import Foundation
import TVMLKit

enum CustomTVMLElement: String {
    case tvButton = "tvbutton"
    case tvListItem = "tvListItem"
}

class CustomInterfaceFactory: TVInterfaceFactory {
    
    override func makeView(element: TVViewElement, existingView: UIView?) -> UIView? {
        
        if element.name == CustomTVMLElement.tvButton.rawValue {
            guard let textElement = element.children?.first as? TVTextElement else { return nil }
            guard let attributedString = textElement.attributedString else { return nil }
            
            let button = UIButton()
            button.setTitle(attributedString.string, for: .normal)
            button.backgroundColor = UIColor.green
            return button
        } else if element.name == CustomTVMLElement.tvListItem.rawValue {
            guard let textElement = element.children?.first as? TVTextElement else { return nil }
            guard let attributedString = textElement.attributedString else { return nil }
            
            /*
             * Returning UICollectionViewCell because listItemLockUps are mapped to the private TVListViewCell ( https://github.com/nst/iOS-Runtime-Headers/blob/master/PrivateFrameworks/TVMLKit.framework/_TVListViewCell.h )
             * Whatever we are passing back (UIView, UIButton, UILabel, UICollectionViewCell), everything is ignored and results in an empty TVListViewCell Object.
             */
            let cell = UICollectionViewCell(frame: CGRect(x: 0, y: 0, width: 500, height: 100))
            let label = UILabel(frame: cell.frame)
            label.text = attributedString.string
            cell.addSubview(label)
            return cell
        }

        return nil
    }
    
}
