//
//  ViewController.swift
//  87mm_mobile
//
//  Created by 심관혁 on 11/27/24.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var logoCustomButton: CustomButtonView = {
        let button = CustomButtonView(frame: CGRect(x: 0, y: 0, width: 44, height: 28))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageName = "logo"
        return button
    }()
    
    lazy var menuCustomButton: CustomButtonView = {
        let button = CustomButtonView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageName = "line.3.horizontal.decrease"
        return button
    }()
    
    lazy var cartCustomButton: CustomButtonView = {
        let button = CustomButtonView(frame: CGRect(x: 0, y: 0, width: 30, height: 25))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageName = "cart"
        return button
    }()
    
    lazy var favoriteCustomButton: CustomButtonView = {
        let button = CustomButtonView(frame: CGRect(x: 0, y: 0, width: 30, height: 25))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageName = "heart"
        return button
    }()
    
    lazy var myPageCustomButton: CustomButtonView = {
        let button = CustomButtonView(frame: CGRect(x: 0, y: 0, width: 30, height: 25))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageName = "person"
        return button
    }()
    
    lazy var searchCustomButton: CustomButtonView = {
        let button = CustomButtonView(frame: CGRect(x: 0, y: 0, width: 30, height: 25))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageName = "magnifyingglass"
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .main
        
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.backgroundColor = .main
        
        navigationItem.leftBarButtonItems = [
            UIBarButtonItem(customView: menuCustomButton),
            UIBarButtonItem(customView: logoCustomButton)
        ]
        
        // 네비게이션바 왼쪽 버튼 - 메뉴, 로고(홈)
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(customView: cartCustomButton),
            UIBarButtonItem(customView: favoriteCustomButton),
            UIBarButtonItem(customView: myPageCustomButton),
            UIBarButtonItem(customView: searchCustomButton)
        ]
        
        // 네비게이션바 오른쪽 버튼 - 검색, 마이페이지, 찜, 장바구니
        navigationItem.leftBarButtonItems?.forEach {
            $0.customView?.translatesAutoresizingMaskIntoConstraints = false
        }
        
        // 네비게이션바 오른쪽 버튼 간격 조정
        navigationItem.rightBarButtonItems?.forEach {
            $0.customView?.translatesAutoresizingMaskIntoConstraints = false
            $0.customView?.widthAnchor.constraint(equalToConstant: 30).isActive = true
        }
        
        // TODO: - ScrollView 만들고 내부에 CollectionView 삽입
        let test = UIScrollView()
        test.backgroundColor = .white
        test.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(test)
        
        NSLayoutConstraint.activate([
            test.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            test.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            test.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            test.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        
    }


}

