//
//  ProductCell.swift
//  87mm_mobile
//
//  Created by 심관혁 on 11/28/24.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    static let identifier = "ProductCell"
    
    // tempToggleBool
    var tempToggleBool: Bool = false
    
    private var pageViewController: UIPageViewController!
    private var pages: [UIViewController] = []
    private var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.pageIndicatorTintColor = .lightGray
        return pageControl
    }()
    
    private lazy var heartButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "product.heart")!.resizeImageTo(size: CGSize(width: 14, height: 14))
        button.setImage(image, for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(didTapHeartButton), for: .touchUpInside)
        return button
    }()
    
    private let productLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "87MMILSANG-Regular", size: 11)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "87MMILSANG-Regular", size: 12)
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 1
        return label
    }()
    
    private let sizeLabel: UILabel = {
        let label = UILabel()
        label.text = "S   M   L"
        label.textColor = .gray
        label.font = UIFont(name: "87MMILSANG-Regular", size: 12)
        label.textAlignment = .center
        return label
    }()
    
    private let dividerView = DividerFactory.createDivider()
    
    
    
    func configure(_ data: ProductData) {
        setupPageViewController(with: data.imagenames)
        productLabel.text = data.name
        priceLabel.text = data.price
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(pageViewController.view)
        contentView.addSubview(heartButton)
        contentView.addSubview(pageControl)
        contentView.addSubview(productLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(sizeLabel)
        contentView.addSubview(dividerView)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        heartButton.translatesAutoresizingMaskIntoConstraints = false
        productLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        sizeLabel.translatesAutoresizingMaskIntoConstraints = false
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pageViewController.view.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            pageViewController.view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            pageViewController.view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            pageViewController.view.heightAnchor.constraint(equalTo: pageViewController.view.widthAnchor, multiplier: 1.25),
            
            heartButton.topAnchor.constraint(equalTo: pageViewController.view.topAnchor, constant: 8),
            heartButton.trailingAnchor.constraint(equalTo: pageViewController.view.trailingAnchor, constant: -8),
            heartButton.heightAnchor.constraint(equalToConstant: 15),
            
            pageControl.topAnchor.constraint(equalTo: pageViewController.view.bottomAnchor, constant: -32),
            pageControl.centerXAnchor.constraint(equalTo: pageViewController.view.centerXAnchor),
            pageControl.heightAnchor.constraint(equalToConstant: 18),
            
            productLabel.topAnchor.constraint(equalTo: pageViewController.view.bottomAnchor, constant: 8),
            productLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            productLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            productLabel.heightAnchor.constraint(equalToConstant: 27),
            
            priceLabel.topAnchor.constraint(equalTo: productLabel.bottomAnchor, constant: 8),
            priceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            priceLabel.heightAnchor.constraint(equalToConstant: 20),
            
            sizeLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 8),
            sizeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            sizeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            sizeLabel.heightAnchor.constraint(equalToConstant: 20),
            
            dividerView.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 4),
            dividerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            dividerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            dividerView.heightAnchor.constraint(equalToConstant: 1),
            
        ])
    }
    
    private func setupPageViewController(with imageNames: [String]) {
        pages = imageNames.map { imagename in
            let imageViewController = UIViewController()
            let imageView = UIImageView(image: UIImage(named: imagename))
            imageView.contentMode = .scaleAspectFit
            imageView.clipsToBounds = true
            imageViewController.view = imageView
            return imageViewController
        }
        
        pageViewController.setViewControllers([pages[0]], direction: .forward, animated: false, completion: nil)
        pageViewController.dataSource = self
        pageViewController.delegate = self
        
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = 0
    }
    
    // TODO: - Toggle HeartButton
    @objc func didTapHeartButton() {
        tempToggleBool.toggle()
        if tempToggleBool {
            let image = UIImage(named: "product.heart.fill")!.resizeImageTo(size: CGSize(width: 14, height: 14))
            heartButton.setImage(image, for: .normal)
        } else {
            let image = UIImage(named: "product.heart")!.resizeImageTo(size: CGSize(width: 14, height: 14))
            heartButton.setImage(image, for: .normal)
        }
    }
}

extension ProductCell: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController), index > 0 else { return nil }
        return pages[index - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController), index < pages.count - 1 else { return nil }
        return pages[index + 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if let currentViewController = pageViewController.viewControllers?.first, let currentIndex = pages.firstIndex(of: currentViewController) {
            pageControl.currentPage = currentIndex
        }
    }
}
