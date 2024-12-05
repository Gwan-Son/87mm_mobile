//
//  ViewController.swift
//  87mm_mobile
//
//  Created by 심관혁 on 11/27/24.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    var data = ProductData.list // 임시 데이터 셋
    var dataSource: UICollectionViewDiffableDataSource<Section, ProductData>!
    var isHidden = true
    
    enum Section {
        case main
    }
    
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
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
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
    
    lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(ProductCell.self, forCellWithReuseIdentifier: "ProductCell")
        return collectionView
    }()
    
    lazy var categoryView: CategoryView = {
        let view = CategoryView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = isHidden
        return view
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
        
        configureCollectionView()
        applySectionItems(data)
        
        view.addSubview(collectionView)
        view.addSubview(categoryView)
        
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            categoryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            categoryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            categoryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            categoryView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            
        ])
        
        
    }
    
    private func applySectionItems(_ items: [ProductData], to sections: Section = .main) {
        var snapshot = NSDiffableDataSourceSnapshot<Section, ProductData>()
        snapshot.appendSections([sections])
        snapshot.appendItems(items, toSection: sections)
        dataSource.apply(snapshot)
    }

    private func configureCollectionView() {
        dataSource = UICollectionViewDiffableDataSource<Section, ProductData>(collectionView: collectionView, cellProvider: { collectionView, indexPath, itemIdentifier in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell else {
                return nil
            }
            cell.configure(itemIdentifier)
            return cell
        })
        
        collectionView.collectionViewLayout = layout()
        collectionView.delegate = self
    }
    
    private func layout() -> UICollectionViewCompositionalLayout {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let gruopSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.45))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: gruopSize, repeatingSubitem: item, count: 2)
        
        let section = NSCollectionLayoutSection(group: group)
        
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }

    // 임시 버튼 테스트
    // TODO: - 메뉴, 홈, 검색, 마이페이지, 찜, 장바구니
    @objc func didTapButton() {
        print("Button!!")
        
        
        isHidden.toggle()
        categoryView.isHidden = isHidden
//        if isHidden { // hide
//            
//        } else { // show
//            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseInOut) {
//                
//            }
//        }
        
        isHidden ? (menuCustomButton.imageName = "line.3.horizontal.decrease") : (menuCustomButton.imageName = "xmark")
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt: \(indexPath.item)")
    }
}
