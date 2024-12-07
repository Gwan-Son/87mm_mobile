//
//  CustomButtonView.swift
//  87mm_mobile
//
//  Created by 심관혁 on 11/27/24.
//

import UIKit

class CustomButtonView: UIButton {
    static func createButton(imageName: String) -> CustomButtonView {
        let button = CustomButtonView()
        button.imageName = imageName
        button.backgroundColor = .clear
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        if let image = UIImage(named: imageName) {
            if imageName == "logo" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 44, height: 28))
                button.setImage(resizedImage, for: .normal)
            } else if imageName == "cart" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 16, height: 14.93))
                button.setImage(resizedImage, for: .normal)
            } else if imageName == "favorite" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 16, height: 14.85))
                button.setImage(resizedImage, for: .normal)
            } else if imageName == "profile" || imageName == "search" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 16, height: 16))
                button.setImage(resizedImage, for: .normal)
            } else {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 20, height: 20))
                button.setImage(resizedImage, for: .normal)
            }
        } else if let image = UIImage(systemName: imageName) {
            if imageName == "line.3.horizontal.decrease" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 20, height: 20))
                button.setImage(resizedImage, for: .normal)
            } else {
                button.setImage(image, for: .normal)
            }
        } else {
            button.setImage(nil, for: .normal)
        }
        return button
    }
    
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
        
        if let image = UIImage(named: imageName) {
            if imageName == "logo" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 44, height: 28))
                setImage(resizedImage, for: .normal)
            } else if imageName == "cart" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 16, height: 14.93))
                setImage(resizedImage, for: .normal)
            } else if imageName == "favorite" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 16, height: 14.85))
                setImage(resizedImage, for: .normal)
            } else if imageName == "profile" || imageName == "search" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 16, height: 16))
                setImage(resizedImage, for: .normal)
            } else {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 20, height: 20))
                setImage(resizedImage, for: .normal)
            }
        } else if let image = UIImage(systemName: imageName) {
            if imageName == "line.3.horizontal.decrease" {
                let resizedImage = image.resizeImageTo(size: CGSize(width: 20, height: 20))
                setImage(resizedImage, for: .normal)
            } else {
                setImage(image, for: .normal)
            }
        } else {
            setImage(nil, for: .normal)
        }
    }
}
