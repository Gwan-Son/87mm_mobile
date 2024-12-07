//
//  CategoryView.swift
//  87mm_mobile
//
//  Created by 심관혁 on 12/3/24.
//

import UIKit

class CategoryView: UIStackView {
    
    let topHorizonDividerView = DividerFactory.createDivider()
    let verticalDividerView = DividerFactory.createDivider()
    let horizonDivider1 = DividerFactory.createDivider()
    let horizonDivider2 = DividerFactory.createDivider()
    let horizonDivider3 = DividerFactory.createDivider()
    let horizonDivider4 = DividerFactory.createDivider()
    let centerHorizonDivider1 = DividerFactory.createDivider()
    let centerHorizonDivider2 = DividerFactory.createDivider()
    let centerHorizonDivider3 = DividerFactory.createDivider()
    let centerHorizonDivider4 = DividerFactory.createDivider()
    
    let mmlgLabel: UILabel = {
        let label = UILabel()
        label.text = "MMLG"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Oblique", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let mmlgWlabel: UILabel = {
        let label = UILabel()
        label.text = "MMLG W"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Oblique", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let onesServiceLabel: UILabel = {
        let label = UILabel()
        label.text = "ONES SERVICE"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Oblique", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ilsangLabel: UILabel = {
        let label = UILabel()
        label.text = "팔칠엠엠 일상체"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Oblique", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let archiveLabel: UILabel = {
        let label = UILabel()
        label.text = "ARCHIVE"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Oblique", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let membershipLabel: UILabel = {
        let label = UILabel()
        label.text = "MEMBERSHIP"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Oblique", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let storesLabel: UILabel = {
        let label = UILabel()
        label.text = "STORES"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Oblique", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let contactLabel: UILabel = {
        let label = UILabel()
        label.text = "CONTACT"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Oblique", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let instagramIcon: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "instagram")!.resizeImageTo(size: CGSize(width: 12, height: 12))
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let facebookIcon: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "facebook")!.resizeImageTo(size: CGSize(width: 12, height: 12))
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let youtubeIcon: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "youtube")!.resizeImageTo(size: CGSize(width: 12, height: 12))
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let koreaIcon: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "korea")!.resizeImageTo(size: CGSize(width: 18, height: 13.5))
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let koreaLabel: UILabel = {
        let label = UILabel()
        label.text = "KR/₩"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Regular", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let usaIcon: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "usa")!.resizeImageTo(size: CGSize(width: 18, height: 13.5))
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let usaLabel: UILabel = {
        let label = UILabel()
        label.text = "EN/$"
        label.textColor = .black
        label.font = UIFont(name: "87MMILSANG-Regular", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .main
        addSubview(topHorizonDividerView)
        addSubview(verticalDividerView)
        addSubview(mmlgLabel)
        addSubview(mmlgWlabel)
        addSubview(horizonDivider1)
        addSubview(onesServiceLabel)
        addSubview(horizonDivider2)
        addSubview(ilsangLabel)
        addSubview(horizonDivider3)
        addSubview(archiveLabel)
        addSubview(horizonDivider4)
        addSubview(centerHorizonDivider1)
        addSubview(membershipLabel)
        addSubview(centerHorizonDivider2)
        addSubview(storesLabel)
        addSubview(centerHorizonDivider3)
        addSubview(contactLabel)
        addSubview(centerHorizonDivider4)
        addSubview(instagramIcon)
        addSubview(facebookIcon)
        addSubview(youtubeIcon)
        addSubview(koreaIcon)
        addSubview(koreaLabel)
        addSubview(usaIcon)
        addSubview(usaLabel)
        
        NSLayoutConstraint.activate([
            topHorizonDividerView.topAnchor.constraint(equalTo: topAnchor),
            topHorizonDividerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            topHorizonDividerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            topHorizonDividerView.heightAnchor.constraint(equalToConstant: 1),
            
            verticalDividerView.topAnchor.constraint(equalTo: topAnchor),
            verticalDividerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            verticalDividerView.widthAnchor.constraint(equalToConstant: 1),
            verticalDividerView.heightAnchor.constraint(equalToConstant: 325),
            
            mmlgLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            mmlgLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            mmlgWlabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            mmlgWlabel.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor, constant: 15),
            
            horizonDivider1.topAnchor.constraint(equalTo: mmlgWlabel.bottomAnchor, constant: 10),
            horizonDivider1.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor),
            horizonDivider1.heightAnchor.constraint(equalToConstant: 1),
            horizonDivider1.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            onesServiceLabel.topAnchor.constraint(equalTo: horizonDivider1.bottomAnchor, constant: 10),
            onesServiceLabel.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor, constant: 15),
            
            horizonDivider2.topAnchor.constraint(equalTo: onesServiceLabel.bottomAnchor, constant: 10),
            horizonDivider2.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor),
            horizonDivider2.heightAnchor.constraint(equalToConstant: 1),
            horizonDivider2.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            ilsangLabel.topAnchor.constraint(equalTo: horizonDivider2.bottomAnchor, constant: 10),
            ilsangLabel.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor, constant: 15),
            
            horizonDivider3.topAnchor.constraint(equalTo: ilsangLabel.bottomAnchor, constant: 10),
            horizonDivider3.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor),
            horizonDivider3.heightAnchor.constraint(equalToConstant: 1),
            horizonDivider3.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            archiveLabel.topAnchor.constraint(equalTo: horizonDivider3.bottomAnchor, constant: 10),
            archiveLabel.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor, constant: 15),

            horizonDivider4.topAnchor.constraint(equalTo: archiveLabel.bottomAnchor, constant: 10),
            horizonDivider4.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor),
            horizonDivider4.heightAnchor.constraint(equalToConstant: 1),
            horizonDivider4.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            centerHorizonDivider1.topAnchor.constraint(equalTo: verticalDividerView.bottomAnchor),
            centerHorizonDivider1.leadingAnchor.constraint(equalTo: leadingAnchor),
            centerHorizonDivider1.trailingAnchor.constraint(equalTo: trailingAnchor),
            centerHorizonDivider1.heightAnchor.constraint(equalToConstant: 1),
            
            membershipLabel.topAnchor.constraint(equalTo: centerHorizonDivider1.bottomAnchor, constant: 10),
            membershipLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            centerHorizonDivider2.topAnchor.constraint(equalTo: membershipLabel.bottomAnchor, constant: 10),
            centerHorizonDivider2.leadingAnchor.constraint(equalTo: leadingAnchor),
            centerHorizonDivider2.trailingAnchor.constraint(equalTo: trailingAnchor),
            centerHorizonDivider2.heightAnchor.constraint(equalToConstant: 1),
            
            storesLabel.topAnchor.constraint(equalTo: centerHorizonDivider2.bottomAnchor, constant: 10),
            storesLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            centerHorizonDivider3.topAnchor.constraint(equalTo: storesLabel.bottomAnchor, constant: 10),
            centerHorizonDivider3.leadingAnchor.constraint(equalTo: leadingAnchor),
            centerHorizonDivider3.trailingAnchor.constraint(equalTo: trailingAnchor),
            centerHorizonDivider3.heightAnchor.constraint(equalToConstant: 1),
            
            contactLabel.topAnchor.constraint(equalTo: centerHorizonDivider3.bottomAnchor, constant: 10),
            contactLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            centerHorizonDivider4.topAnchor.constraint(equalTo: contactLabel.bottomAnchor, constant: 10),
            centerHorizonDivider4.leadingAnchor.constraint(equalTo: leadingAnchor),
            centerHorizonDivider4.trailingAnchor.constraint(equalTo: trailingAnchor),
            centerHorizonDivider4.heightAnchor.constraint(equalToConstant: 1),
            
            instagramIcon.topAnchor.constraint(equalTo: centerHorizonDivider4.bottomAnchor, constant: 15),
            instagramIcon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            facebookIcon.topAnchor.constraint(equalTo: centerHorizonDivider4.bottomAnchor, constant: 15),
            facebookIcon.leadingAnchor.constraint(equalTo: instagramIcon.trailingAnchor, constant: 15),
            
            youtubeIcon.topAnchor.constraint(equalTo: centerHorizonDivider4.bottomAnchor, constant: 15),
            youtubeIcon.leadingAnchor.constraint(equalTo: facebookIcon.trailingAnchor, constant: 15),
            
            koreaIcon.topAnchor.constraint(equalTo: centerHorizonDivider4.bottomAnchor, constant: 20),
            koreaIcon.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor, constant: 15),
            
            koreaLabel.topAnchor.constraint(equalTo: centerHorizonDivider4.bottomAnchor, constant: 15),
            koreaLabel.leadingAnchor.constraint(equalTo: koreaIcon.trailingAnchor, constant: 10),
            
            usaIcon.topAnchor.constraint(equalTo: koreaIcon.bottomAnchor, constant: 10),
            usaIcon.leadingAnchor.constraint(equalTo: verticalDividerView.trailingAnchor, constant: 15),
            
            usaLabel.topAnchor.constraint(equalTo: koreaLabel.bottomAnchor, constant: 10),
            usaLabel.leadingAnchor.constraint(equalTo: usaIcon.trailingAnchor, constant: 10),
            
        ])
    }
}
