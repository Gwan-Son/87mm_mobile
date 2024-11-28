//
//  CustomButtonView.swift
//  87mm_mobile
//
//  Created by 심관혁 on 11/27/24.
//

import UIKit

class CustomButtonView: UIButton {
    var imageName: String? {
        didSet {
            updateButtonImage()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .main
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton() {
        backgroundColor = .clear
        layer.masksToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func updateButtonImage() {
        guard let imageName = imageName else {
            setImage(nil, for: .normal)
            return
        }
        
        if let image = UIImage(systemName: imageName) {
            setImage(image, for: .normal)
        } else if let image = UIImage(named: imageName) {
            let resizedImage = image.resizeImageTo(size: CGSize(width: 44, height: 28))
            setImage(resizedImage, for: .normal)
        } else {
            setImage(nil, for: .normal)
        }
    }
}
