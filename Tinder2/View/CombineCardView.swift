//
//  CombineCardView.swift
//  Tinder2
//
//  Created by Mac Neia on 26/07/21.
//

import UIKit

class CombineCardView: UIView {
    
    let fotoImageview: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pessoa-1")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
        
    }()
    
    let nomeLabel: UILabel = .textBoldLabel(32, textColor: .white)
    let idadeLabel: UILabel = .textLabel(28, textColor: .white)
    let fraseLabel: UILabel = .textLabel(18, textColor: .white, numberOfLines: 2)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 0.3
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        
        nomeLabel.text = "Ana Laura"
        idadeLabel.text = "20"
        fraseLabel.text = "O ultimo a dar match chama"
        
        nomeLabel.adicionarShadow()
        idadeLabel.adicionarShadow()
        fraseLabel.adicionarShadow()
        
      addSubview(fotoImageview)
        
        fotoImageview.preencherSuperview()
        
        let nomeIdadestackView = UIStackView(arrangedSubviews: [nomeLabel, idadeLabel, UIView()])
        nomeIdadestackView.spacing = 12
        
        let stackView = UIStackView(arrangedSubviews: [nomeIdadestackView, fraseLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.preencher(
            top: nil,
            leading: leadingAnchor,
            bottom: bottomAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 0, left: 16, bottom: 16, right: 16)
        )
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
        
    }
}
