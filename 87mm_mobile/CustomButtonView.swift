//
//  CustomButtonView.swift
//  87mm_mobile
//
//  Created by 심관혁 on 11/27/24.
//

import UIKit

class CustomButtonView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .main
        layer.cornerRadius = 10
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
