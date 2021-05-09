//
//  CombineCardView.swift
//  Tinder ViewCode
//
//  Created by Yago De Moura Silva on 09/05/21.
//  Copyright © 2021 Yago De Moura Silva. All rights reserved.
//


import UIKit


class CombineCardView: UIView {
    
    var usuario: Usuario? {
        didSet {
            if let usuario = usuario {
                fotoImageView.image = UIImage(named: usuario.foto)
                nomeLabel.text = usuario.nome
                idadeLabel.text = String(usuario.idade)
                fraseLabel.text = usuario.frase
                
            }
        }
    }
  
    let fotoImageView: UIImageView = .fotoImageView()
    
    let nomeLabel: UILabel = .textBoldLabel(32, textColor: .white)
    let idadeLabel: UILabel = .textLabel(28, textColor: .white)
    let fraseLabel: UILabel = .textLabel(18, textColor: .white, numberOfLines: 2)
    
    let deslikeImageView: UIImageView = .iconCard(named: "card-deslike")
    let likeImageView: UIImageView = .iconCard(named: "card-like")
    
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    layer.borderWidth = 0.3
    layer.borderColor = UIColor.lightGray.cgColor
    layer.cornerRadius = 8
    clipsToBounds = true
    
    nomeLabel.addShadow()
    idadeLabel.addShadow()
    fraseLabel.addShadow()
    
    addSubview(fotoImageView)
    addSubview(deslikeImageView)
    deslikeImageView.preencher(top: topAnchor,
                               leading: nil,
                               trailing: trailingAnchor,
                               bottom: nil,
                               padding: .init(top: 20, left: 0, bottom: 0, right: 20)
    )
    
    addSubview(likeImageView)
    likeImageView.preencher(top: topAnchor,
                               leading: leadingAnchor,
                               trailing: nil,
                               bottom: nil,
                               padding: .init(top: 20, left: 20, bottom: 0, right: 0) )
    
    fotoImageView.preencherSuperview()
    
    let nomeIdadeStackView = UIStackView(arrangedSubviews: [nomeLabel, idadeLabel, UIView()])
    nomeIdadeStackView.spacing = 12
    
    let stackView = UIStackView(arrangedSubviews: [nomeIdadeStackView, fraseLabel])
    stackView.distribution = .fillEqually
    stackView.axis = .vertical
    
    
    
    addSubview(stackView)
    stackView.preencher(top: nil,
                        leading: leadingAnchor,
                        trailing: trailingAnchor,
                        bottom: bottomAnchor,
                        padding: .init(top: 0, left: 16, bottom: 16, right: 16)
    )
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
}
