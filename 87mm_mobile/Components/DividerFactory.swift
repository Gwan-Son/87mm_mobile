//
//  DividerFactory.swift
//  87mm_mobile
//
//  Created by 심관혁 on 12/6/24.
//

import UIKit

class DividerFactory {
    static func createDivider() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }
}
