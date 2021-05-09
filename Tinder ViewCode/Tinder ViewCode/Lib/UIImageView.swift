//
//  UIImageView.swift
//  Tinder ViewCode
//
//  Created by Yago De Moura Silva on 09/05/21.
//  Copyright © 2021 Yago De Moura Silva. All rights reserved.
//

import UIKit

extension UIImageView {
    
    static func fotoImageView (named: String? = nil) -> UIImageView {

        let imageView = UIImageView()
        if let named = named {
            imageView.image = UIImage(named: named)
        }
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }
    
    static func iconCard(named: String) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named: named)
        imageView.size(size: .init(width: 70, height: 70))
        imageView.alpha = 0.0
        
        return imageView
    }
}
