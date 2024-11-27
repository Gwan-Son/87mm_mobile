//
//  ViewController.swift
//  87mm_mobile
//
//  Created by 심관혁 on 11/27/24.
//

import UIKit

class ViewController: UIViewController {
    
    var logoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "logo")?.resizeImageTo(size: CGSize(width: 44, height: 28))
        button.setImage(image, for: .normal)
        button.tintColor = .black
        return button
    }()
    
    var menuButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(systemName: "line.3.horizontal")?.resizeImageTo(size: CGSize(width: 25, height: 15))
        button.setImage(image, for: .normal)
        button.tintColor = .black
        return button
    }()
    
    var searchButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(systemName: "magnifyingglass")?.resizeImageTo(size: CGSize(width: 25, height: 25))
        button.setImage(image, for: .normal)
        button.tintColor = .black
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        navigationController?.navigationBar.tintColor = .black
//        navigationController?.navigationBar.backgroundColor = .main
        
        navigationItem.leftBarButtonItems = [
            UIBarButtonItem(customView: menuButton),
            UIBarButtonItem(customView: logoButton)
        ]
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(customView: searchButton),
            UIBarButtonItem(customView: CustomButtonView(frame: CGRect(x: 0, y: 0, width: 40, height: 40)))
        ]
        
        navigationItem.leftBarButtonItems?.forEach {
            $0.customView?.translatesAutoresizingMaskIntoConstraints = false
        }
        
        navigationItem.rightBarButtonItems?.forEach {
            $0.customView?.translatesAutoresizingMaskIntoConstraints = false
        }
    }


}

