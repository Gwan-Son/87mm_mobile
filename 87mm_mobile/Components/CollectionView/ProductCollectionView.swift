//
//  ProductCollectionView.swift
//  87mm_mobile
//
//  Created by 심관혁 on 11/28/24.
//

import UIKit
import Combine

class ProductCollectionView: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
